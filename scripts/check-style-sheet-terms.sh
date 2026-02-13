#!/usr/bin/env bash
# check-style-sheet-terms.sh — Flag forbidden terms in manuscript files
# Read-only: reports but never modifies.
# Exit 0 on success, 1 if forbidden terms found, 0 with warnings for markers in Draft chapters.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STYLE_SHEET="$REPO_ROOT/docs/book/STYLE_SHEET.md"

PASS=0
FAIL=0
WARN=0
ERRORS=()
WARNINGS=()

echo "Book_Map Style Sheet Term Check"
echo "================================"
echo ""

if [[ ! -f "$STYLE_SHEET" ]]; then
  echo "  ⚠ docs/book/STYLE_SHEET.md not found — skipping term check"
  echo "  (Create the style sheet and add a '## Forbidden Patterns' section)"
  exit 0
fi

# Extract forbidden terms from style sheet
# Looks for lines in the "Forbidden Patterns" section that start with "| " and have content
FORBIDDEN=()
in_forbidden=false
while IFS= read -r line; do
  if echo "$line" | grep -qi "## Forbidden Patterns\|## Forbidden Terms"; then
    in_forbidden=true
    continue
  fi
  if $in_forbidden && echo "$line" | grep -q "^##"; then
    break  # next section
  fi
  if $in_forbidden && echo "$line" | grep -q "^|" && ! echo "$line" | grep -q "^| *Term\|^| *Pattern\|^| *-\|flagged"; then
    # Extract the forbidden term (first column after |)
    term=$(echo "$line" | awk -F'|' '{print $2}' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | sed 's/`//g')
    if [[ -n "$term" && "$term" != "---" && "$term" != *"["* ]]; then
      FORBIDDEN+=("$term")
    fi
  fi
done < "$STYLE_SHEET"

if [[ ${#FORBIDDEN[@]} -eq 0 ]]; then
  echo "  ℹ No forbidden terms found in STYLE_SHEET.md"
  echo "  (Add a '## Forbidden Patterns' section with a table of terms to flag)"
  echo ""
  echo "================================"
  echo "No terms to check."
  exit 0
fi

echo "Forbidden terms loaded: ${#FORBIDDEN[@]}"
for term in "${FORBIDDEN[@]}"; do
  echo "  - \"$term\""
done
echo ""

# Check each chapter file across all books for forbidden terms
echo "Scanning chapters:"
for book_dir in "$REPO_ROOT"/books/book-*/; do
  [[ -d "$book_dir" ]] || continue
  book_name=$(basename "$book_dir")
  CHAPTERS_DIR="$book_dir/manuscript/chapters"

  [[ -d "$CHAPTERS_DIR" ]] || continue

  echo "  --- $book_name ---"
  while IFS= read -r file; do
    rel_path="${file#$REPO_ROOT/}"
    ch_name=$(basename "$file" .md)
    file_clean=true

    for term in "${FORBIDDEN[@]}"; do
      # Case-insensitive search, word boundary where possible
      matches=$(grep -in "$term" "$file" | grep -v "^[0-9]*:<!--" || true)
      if [[ -n "$matches" ]]; then
        file_clean=false
        match_count=$(echo "$matches" | wc -l | tr -d ' ')
        FAIL=$((FAIL + 1))
        ERRORS+=("$rel_path — forbidden term '$term' found ($match_count occurrences)")
        echo "    ✗ $ch_name — '$term' found ($match_count times)"
      fi
    done

    if $file_clean; then
      PASS=$((PASS + 1))
      echo "    ✓ $ch_name — clean"
    fi

  done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)
done

# Also check for TODO/TK/citation-needed markers
echo ""
echo "Marker scan (TODO, TK, citation-needed):"
for book_dir in "$REPO_ROOT"/books/book-*/; do
  [[ -d "$book_dir" ]] || continue
  book_name=$(basename "$book_dir")
  CHAPTERS_DIR="$book_dir/manuscript/chapters"

  [[ -d "$CHAPTERS_DIR" ]] || continue

  echo "  --- $book_name ---"
  while IFS= read -r file; do
    rel_path="${file#$REPO_ROOT/}"
    ch_name=$(basename "$file" .md)
    status=$(grep -o '<!-- status: [^-]* -->' "$file" | sed 's/<!-- status: //;s/ -->//' | head -1 || echo "unknown")

    for marker in "TODO" "TK" "citation.needed"; do
      matches=$(grep -in "$marker" "$file" | grep -v "^[0-9]*:<!-- status:" || true)
      if [[ -n "$matches" ]]; then
        match_count=$(echo "$matches" | wc -l | tr -d ' ')
        if [[ "$status" == "Draft" ]]; then
          WARN=$((WARN + 1))
          WARNINGS+=("$rel_path — '$marker' marker ($match_count) in Draft chapter (acceptable)")
          echo "    ⚠ $ch_name — '$marker' ($match_count times, Draft status — OK for now)"
        else
          FAIL=$((FAIL + 1))
          ERRORS+=("$rel_path — '$marker' marker ($match_count) in $status chapter (must resolve)")
          echo "    ✗ $ch_name — '$marker' ($match_count times, status: $status — must resolve)"
        fi
      fi
    done
  done < <(find "$CHAPTERS_DIR" -name "CH-*.md" -type f | sort)
done

# Summary
echo ""
echo "================================"
echo "Results: $PASS clean, $FAIL issues, $WARN warnings"

if [[ ${#WARNINGS[@]} -gt 0 ]]; then
  echo ""
  echo "Warnings (acceptable in Draft):"
  for w in "${WARNINGS[@]}"; do
    echo "  - $w"
  done
fi

if [[ ${#ERRORS[@]} -gt 0 ]]; then
  echo ""
  echo "Issues (must fix):"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All style sheet term checks passed."
exit 0
