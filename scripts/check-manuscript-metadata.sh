#!/usr/bin/env bash
# check-manuscript-metadata.sh — Validate chapter files have required metadata headers
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHAPTERS_DIR="$REPO_ROOT/manuscript/chapters"

PASS=0
FAIL=0
ERRORS=()

REQUIRED_FIELDS=("status" "updated" "outline_ref")

echo "Book_Map Manuscript Metadata Check"
echo "==================================="
echo ""

if [[ ! -d "$CHAPTERS_DIR" ]]; then
  echo "  ✗ manuscript/chapters/ directory not found"
  exit 1
fi

# Find all chapter files
chapter_count=0
while IFS= read -r file; do
  chapter_count=$((chapter_count + 1))
  rel_path="${file#$REPO_ROOT/}"
  file_pass=true

  for field in "${REQUIRED_FIELDS[@]}"; do
    if grep -q "<!-- ${field}:" "$file"; then
      : # field found
    else
      file_pass=false
      ERRORS+=("$rel_path — missing <!-- ${field}: ... --> tag")
      echo "  ✗ $rel_path — missing '${field}' metadata"
    fi
  done

  if $file_pass; then
    PASS=$((PASS + 1))
    echo "  ✓ $rel_path — all required metadata present"

    # Extract and display metadata
    status=$(grep -o '<!-- status: [^-]* -->' "$file" | sed 's/<!-- status: //;s/ -->//' | head -1)
    updated=$(grep -o '<!-- updated: [^-]*-[^-]*-[^-]* -->' "$file" | grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' | head -1)
    echo "    status: ${status:-unknown}, updated: ${updated:-unknown}"
  else
    FAIL=$((FAIL + 1))
  fi

done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

if [[ $chapter_count -eq 0 ]]; then
  echo "  ⚠ No chapter files (CH-*.md) found in manuscript/chapters/"
  echo ""
  echo "==================================="
  echo "Results: no chapters to check"
  exit 0
fi

# Check for valid status values
echo ""
echo "Status validation:"
VALID_STATUSES="Draft Dev-Edited Line-Edited Copy-Edited Final"
while IFS= read -r file; do
  rel_path="${file#$REPO_ROOT/}"
  status=$(grep -o '<!-- status: [^-]* -->' "$file" | sed 's/<!-- status: //;s/ -->//' | head -1 || true)

  if [[ -n "$status" ]]; then
    found=false
    for valid in $VALID_STATUSES; do
      if [[ "$status" == "$valid" ]]; then
        found=true
        break
      fi
    done
    if ! $found; then
      echo "  ⚠ $rel_path — unknown status: '$status' (expected: $VALID_STATUSES)"
    fi
  fi
done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

# Summary
echo ""
echo "==================================="
echo "Results: $PASS passed, $FAIL failed (out of $chapter_count chapters)"

if [[ ${#ERRORS[@]} -gt 0 ]]; then
  echo ""
  echo "Missing metadata:"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All manuscript metadata checks passed."
exit 0
