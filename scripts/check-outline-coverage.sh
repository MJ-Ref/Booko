#!/usr/bin/env bash
# check-outline-coverage.sh — Verify outline ↔ chapter file mapping
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUTLINE="$REPO_ROOT/docs/book/OUTLINE.md"
CHAPTERS_DIR="$REPO_ROOT/manuscript/chapters"

PASS=0
FAIL=0
ERRORS=()

echo "Book_Map Outline Coverage Check"
echo "================================"
echo ""

if [[ ! -f "$OUTLINE" ]]; then
  echo "  ✗ docs/book/OUTLINE.md not found"
  exit 1
fi

if [[ ! -d "$CHAPTERS_DIR" ]]; then
  echo "  ✗ manuscript/chapters/ directory not found"
  exit 1
fi

# 1) Extract chapter IDs from outline (look for ## CH-XX patterns or #ch-xx anchors)
echo "Outline → Chapter files:"
outline_chapters=()
while IFS= read -r line; do
  # Match lines like "## CH-01" or "### CH-01:" or anchors
  ch_id=$(echo "$line" | grep -o 'CH-[0-9]\{2\}' | head -1 || true)
  if [[ -n "$ch_id" ]] && [[ ! " ${outline_chapters[*]:-} " =~ " ${ch_id} " ]]; then
    outline_chapters+=("$ch_id")
  fi
done < "$OUTLINE"

for ch_id in "${outline_chapters[@]}"; do
  ch_file="$CHAPTERS_DIR/${ch_id}.md"
  if [[ -f "$ch_file" ]]; then
    PASS=$((PASS + 1))
    echo "  ✓ $ch_id — outline entry has matching file"
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("$ch_id — declared in OUTLINE.md but no manuscript/chapters/${ch_id}.md file")
    echo "  ✗ $ch_id — in outline but NO chapter file"
  fi
done

# 2) Check chapter files point back to outline
echo ""
echo "Chapter files → Outline:"
while IFS= read -r file; do
  rel_path="${file#$REPO_ROOT/}"
  ch_id=$(basename "$file" .md)

  # Check for outline_ref metadata
  if grep -q '<!-- outline_ref:' "$file"; then
    PASS=$((PASS + 1))
    echo "  ✓ $ch_id — has outline_ref metadata"
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("$rel_path — chapter file missing <!-- outline_ref: ... --> tag")
    echo "  ✗ $ch_id — missing outline_ref back-link"
  fi

  # Check chapter is in the outline
  if [[ " ${outline_chapters[*]:-} " =~ " ${ch_id} " ]]; then
    : # found in outline
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("$rel_path — chapter file exists but $ch_id not found in OUTLINE.md")
    echo "  ✗ $ch_id — file exists but NOT in outline"
  fi

done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

# Summary
echo ""
echo "================================"
echo "Results: $PASS passed, $FAIL failed"
echo "Outline chapters: ${#outline_chapters[@]}"

if [[ ${#ERRORS[@]} -gt 0 ]]; then
  echo ""
  echo "Coverage gaps:"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All outline coverage checks passed."
exit 0
