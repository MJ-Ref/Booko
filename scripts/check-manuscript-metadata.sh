#!/usr/bin/env bash
# check-manuscript-metadata.sh — Validate chapter files have required metadata headers
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

PASS=0
FAIL=0
ERRORS=()

REQUIRED_FIELDS=("status" "updated" "outline_ref")

echo "Book_Map Manuscript Metadata Check"
echo "==================================="
echo ""

# Iterate over all books
total_chapters=0
for book_dir in "$REPO_ROOT"/books/book-*/; do
  [[ -d "$book_dir" ]] || continue
  book_name=$(basename "$book_dir")
  CHAPTERS_DIR="$book_dir/manuscript/chapters"

  if [[ ! -d "$CHAPTERS_DIR" ]]; then
    echo "  ⚠ $book_name — no manuscript/chapters/ directory"
    continue
  fi

  echo "--- $book_name ---"

  # Find all chapter files
  while IFS= read -r file; do
    total_chapters=$((total_chapters + 1))
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
      status=$(grep -o '<!-- status: [A-Za-z-]* -->' "$file" | sed 's/<!-- status: //;s/ -->//' | head -1)
      updated=$(grep -o '<!-- updated: [^-]*-[^-]*-[^-]* -->' "$file" | grep -o '[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}' | head -1)
      echo "    status: ${status:-unknown}, updated: ${updated:-unknown}"
    else
      FAIL=$((FAIL + 1))
    fi

  done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

  # Check for valid status values
  echo ""
  echo "  Status validation:"
  VALID_STATUSES="Draft Dev-Edited Line-Edited Copy-Edited Final Production-Ready"
  while IFS= read -r file; do
    rel_path="${file#$REPO_ROOT/}"
    status=$(grep -o '<!-- status: [A-Za-z-]* -->' "$file" | sed 's/<!-- status: //;s/ -->//' | head -1 || true)

    if [[ -n "$status" ]]; then
      found=false
      for valid in $VALID_STATUSES; do
        if [[ "$status" == "$valid" ]]; then
          found=true
          break
        fi
      done
      if ! $found; then
        echo "    ⚠ $rel_path — unknown status: '$status' (expected: $VALID_STATUSES)"
      fi
    fi
  done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

  echo ""
done

if [[ $total_chapters -eq 0 ]]; then
  echo "  ⚠ No chapter files (CH-*.md) found in any book"
  echo ""
  echo "==================================="
  echo "Results: no chapters to check"
  exit 0
fi

# Summary
echo "==================================="
echo "Results: $PASS passed, $FAIL failed (out of $total_chapters chapters)"

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
