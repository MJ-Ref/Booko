#!/usr/bin/env bash
# check-outline-coverage.sh — Verify outline ↔ chapter file mapping (per-book)
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

PASS=0
FAIL=0
ERRORS=()

echo "Book_Map Outline Coverage Check"
echo "================================"
echo ""

# Iterate over all books
book_count=0
for book_dir in "$REPO_ROOT"/books/book-*/; do
  [[ -d "$book_dir" ]] || continue
  book_count=$((book_count + 1))
  book_name=$(basename "$book_dir")

  OUTLINE="$book_dir/docs/book/OUTLINE.md"
  CHAPTERS_DIR="$book_dir/manuscript/chapters"

  echo "--- $book_name ---"

  if [[ ! -f "$OUTLINE" ]]; then
    FAIL=$((FAIL + 1))
    ERRORS+=("$book_name — docs/book/OUTLINE.md not found")
    echo "  ✗ $book_name/docs/book/OUTLINE.md not found"
    continue
  fi

  if [[ ! -d "$CHAPTERS_DIR" ]]; then
    FAIL=$((FAIL + 1))
    ERRORS+=("$book_name — manuscript/chapters/ directory not found")
    echo "  ✗ $book_name/manuscript/chapters/ not found"
    continue
  fi

  # 1) Extract chapter IDs from outline (look for ## CH-XX patterns or #ch-xx anchors)
  echo "  Outline → Chapter files:"
  outline_chapters=()
  while IFS= read -r line; do
    ch_id=$(echo "$line" | grep -o 'CH-[0-9]\{2\}' | head -1 || true)
    if [[ -n "$ch_id" ]] && [[ ! " ${outline_chapters[*]:-} " =~ " ${ch_id} " ]]; then
      outline_chapters+=("$ch_id")
    fi
  done < "$OUTLINE"

  for ch_id in "${outline_chapters[@]}"; do
    ch_file="$CHAPTERS_DIR/${ch_id}.md"
    if [[ -f "$ch_file" ]]; then
      PASS=$((PASS + 1))
      echo "    ✓ $ch_id — outline entry has matching file"
    else
      FAIL=$((FAIL + 1))
      ERRORS+=("$book_name/$ch_id — declared in OUTLINE.md but no chapter file")
      echo "    ✗ $ch_id — in outline but NO chapter file"
    fi
  done

  # 2) Check chapter files point back to outline
  echo "  Chapter files → Outline:"
  while IFS= read -r file; do
    ch_id=$(basename "$file" .md)

    # Check for outline_ref metadata
    if grep -q '<!-- outline_ref:' "$file"; then
      PASS=$((PASS + 1))
      echo "    ✓ $ch_id — has outline_ref metadata"
    else
      FAIL=$((FAIL + 1))
      ERRORS+=("$book_name/$ch_id — missing <!-- outline_ref: ... --> tag")
      echo "    ✗ $ch_id — missing outline_ref back-link"
    fi

    # Check chapter is in the outline
    if [[ " ${outline_chapters[*]:-} " =~ " ${ch_id} " ]]; then
      : # found in outline
    else
      FAIL=$((FAIL + 1))
      ERRORS+=("$book_name/$ch_id — chapter file exists but not found in OUTLINE.md")
      echo "    ✗ $ch_id — file exists but NOT in outline"
    fi

  done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)

  echo ""
done

if [[ $book_count -eq 0 ]]; then
  echo "  ⚠ No books found in books/"
  exit 0
fi

# Summary
echo "================================"
echo "Results: $PASS passed, $FAIL failed ($book_count books checked)"

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
