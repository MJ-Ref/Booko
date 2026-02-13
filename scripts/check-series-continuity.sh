#!/usr/bin/env bash
# check-series-continuity.sh — Validate series/ documents exist and are internally consistent
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SERIES_DIR="$REPO_ROOT/series"

PASS=0
FAIL=0
WARN=0
ERRORS=()
WARNINGS=()

echo "Book_Map Series Continuity Check"
echo "================================="
echo ""

if [[ ! -d "$SERIES_DIR" ]]; then
  echo "  ✗ series/ directory not found"
  exit 1
fi

# 1) Required series files
echo "Required series files:"
REQUIRED_FILES=(
  "SERIES_OVERVIEW.md"
  "SERIES_ARC.md"
  "CHARACTERS.md"
  "WORLD.md"
  "TIMELINE.md"
  "THREADS.md"
  "READER_KNOWLEDGE.md"
  "RETROACTIVE_LOG.md"
)

for file in "${REQUIRED_FILES[@]}"; do
  if [[ -f "$SERIES_DIR/$file" ]]; then
    PASS=$((PASS + 1))
    echo "  ✓ series/$file"
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("series/$file — required series document missing")
    echo "  ✗ series/$file — MISSING"
  fi
done

# 2) Check handoffs directory
echo ""
echo "Handoffs directory:"
if [[ -d "$SERIES_DIR/handoffs" ]]; then
  PASS=$((PASS + 1))
  echo "  ✓ series/handoffs/ exists"
else
  FAIL=$((FAIL + 1))
  ERRORS+=("series/handoffs/ — handoffs directory missing")
  echo "  ✗ series/handoffs/ — MISSING"
fi

# 3) Freshness tags on series documents
echo ""
echo "Freshness tags:"
for file in "${REQUIRED_FILES[@]}"; do
  filepath="$SERIES_DIR/$file"
  [[ -f "$filepath" ]] || continue
  if grep -q '<!-- reviewed:' "$filepath"; then
    PASS=$((PASS + 1))
    echo "  ✓ series/$file — has freshness tag"
  else
    WARN=$((WARN + 1))
    WARNINGS+=("series/$file — missing <!-- reviewed: --> freshness tag")
    echo "  ⚠ series/$file — missing freshness tag"
  fi
done

# 4) Cross-check: books/_INDEX.md lists all books that exist
echo ""
echo "Books index consistency:"
BOOKS_INDEX="$REPO_ROOT/books/_INDEX.md"
if [[ -f "$BOOKS_INDEX" ]]; then
  for book_dir in "$REPO_ROOT"/books/book-*/; do
    [[ -d "$book_dir" ]] || continue
    book_name=$(basename "$book_dir")
    if grep -q "$book_name" "$BOOKS_INDEX"; then
      PASS=$((PASS + 1))
      echo "  ✓ $book_name — listed in books/_INDEX.md"
    else
      FAIL=$((FAIL + 1))
      ERRORS+=("$book_name — exists in books/ but not listed in books/_INDEX.md")
      echo "  ✗ $book_name — NOT listed in books/_INDEX.md"
    fi
  done
else
  FAIL=$((FAIL + 1))
  ERRORS+=("books/_INDEX.md — missing")
  echo "  ✗ books/_INDEX.md — MISSING"
fi

# 5) Cross-check: SERIES_ARC.md references existing books
echo ""
echo "Series arc consistency:"
SERIES_ARC="$SERIES_DIR/SERIES_ARC.md"
if [[ -f "$SERIES_ARC" ]]; then
  for book_dir in "$REPO_ROOT"/books/book-*/; do
    [[ -d "$book_dir" ]] || continue
    book_name=$(basename "$book_dir")
    if grep -qi "$book_name\|book.01\|book 01\|Book 1" "$SERIES_ARC"; then
      PASS=$((PASS + 1))
      echo "  ✓ $book_name — referenced in SERIES_ARC.md"
    else
      WARN=$((WARN + 1))
      WARNINGS+=("$book_name — not explicitly referenced in SERIES_ARC.md")
      echo "  ⚠ $book_name — not found in SERIES_ARC.md (may need updating)"
    fi
  done
else
  echo "  ⚠ series/SERIES_ARC.md not found — skipping arc consistency check"
fi

# Summary
echo ""
echo "================================="
echo "Results: $PASS passed, $FAIL failed, $WARN warnings"

if [[ ${#WARNINGS[@]} -gt 0 ]]; then
  echo ""
  echo "Warnings:"
  for w in "${WARNINGS[@]}"; do
    echo "  - $w"
  done
fi

if [[ ${#ERRORS[@]} -gt 0 ]]; then
  echo ""
  echo "Failures:"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All series continuity checks passed."
exit 0
