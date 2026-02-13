#!/usr/bin/env bash
# check-doc-freshness.sh — Flag docs with stale or missing freshness tags
# Read-only: reports but never modifies.
# Exit 0 if all fresh, 0 with warnings if stale, 1 if missing tags.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MAX_AGE_DAYS=30

# Parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    --max-age-days) MAX_AGE_DAYS="$2"; shift 2 ;;
    *) shift ;;
  esac
done

FRESH=0
STALE=0
MISSING=0
ERRORS=()
WARNINGS=()

# Get current date as epoch
if date -j -f "%Y-%m-%d" "2026-01-01" "+%s" &>/dev/null; then
  # macOS
  NOW=$(date "+%s")
  date_to_epoch() { date -j -f "%Y-%m-%d" "$1" "+%s" 2>/dev/null; }
else
  # Linux
  NOW=$(date "+%s")
  date_to_epoch() { date -d "$1" "+%s" 2>/dev/null; }
fi

echo "Book_Map Doc Freshness Check"
echo "============================"
echo "Max age: ${MAX_AGE_DAYS} days"
echo ""

# Check all .md files in docs/
while IFS= read -r file; do
  rel_path="${file#$REPO_ROOT/}"

  # Extract reviewed date
  reviewed_date=$(grep -o '<!-- reviewed: [0-9-]* -->' "$file" | head -1 | grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' || true)

  if [[ -z "$reviewed_date" ]]; then
    MISSING=$((MISSING + 1))
    ERRORS+=("$rel_path — no <!-- reviewed: YYYY-MM-DD --> tag found")
    echo "  ✗ MISSING TAG: $rel_path"
    continue
  fi

  # Validate date format
  file_epoch=$(date_to_epoch "$reviewed_date" 2>/dev/null || echo "")
  if [[ -z "$file_epoch" ]]; then
    MISSING=$((MISSING + 1))
    ERRORS+=("$rel_path — invalid date format: $reviewed_date")
    echo "  ✗ INVALID DATE: $rel_path ($reviewed_date)"
    continue
  fi

  # Calculate age
  age_days=$(( (NOW - file_epoch) / 86400 ))

  if [[ $age_days -le $MAX_AGE_DAYS ]]; then
    FRESH=$((FRESH + 1))
    echo "  ✓ $rel_path ($reviewed_date, ${age_days}d)"
  elif [[ $age_days -le 60 ]]; then
    STALE=$((STALE + 1))
    WARNINGS+=("$rel_path — aging ($reviewed_date, ${age_days}d)")
    echo "  ⚠ AGING: $rel_path ($reviewed_date, ${age_days}d)"
  elif [[ $age_days -le 90 ]]; then
    STALE=$((STALE + 1))
    WARNINGS+=("$rel_path — stale ($reviewed_date, ${age_days}d)")
    echo "  ⚠ STALE: $rel_path ($reviewed_date, ${age_days}d)"
  else
    STALE=$((STALE + 1))
    WARNINGS+=("$rel_path — critical ($reviewed_date, ${age_days}d)")
    echo "  ⚠ CRITICAL: $rel_path ($reviewed_date, ${age_days}d)"
  fi

done < <(find "$REPO_ROOT/docs" -name "*.md" -type f | sort)

# Summary
echo ""
echo "============================"
echo "Results: $FRESH fresh, $STALE stale/aging, $MISSING missing tags"

if [[ ${#WARNINGS[@]} -gt 0 ]]; then
  echo ""
  echo "Stale docs (review recommended):"
  for w in "${WARNINGS[@]}"; do
    echo "  - $w"
  done
fi

if [[ ${#ERRORS[@]} -gt 0 ]]; then
  echo ""
  echo "Missing/invalid tags (must fix):"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All docs have valid freshness tags."
exit 0
