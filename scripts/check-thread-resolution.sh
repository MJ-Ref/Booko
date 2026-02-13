#!/usr/bin/env bash
# check-thread-resolution.sh — Validate plot threads in series/THREADS.md are tracked
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
THREADS_FILE="$REPO_ROOT/series/THREADS.md"

PASS=0
FAIL=0
WARN=0
ERRORS=()
WARNINGS=()

echo "Book_Map Thread Resolution Check"
echo "================================="
echo ""

if [[ ! -f "$THREADS_FILE" ]]; then
  echo "  ⚠ series/THREADS.md not found — skipping thread check"
  echo "  (Create the threads file to track plot threads across books)"
  exit 0
fi

# 1) Check that THREADS.md has the required sections
echo "Required sections:"
REQUIRED_SECTIONS=("Active Threads" "Resolved Threads" "Dangling Threads")
for section in "${REQUIRED_SECTIONS[@]}"; do
  if grep -qi "## $section\|## .*$section" "$THREADS_FILE"; then
    PASS=$((PASS + 1))
    echo "  ✓ '$section' section found"
  else
    WARN=$((WARN + 1))
    WARNINGS+=("series/THREADS.md — missing '$section' section")
    echo "  ⚠ '$section' section not found"
  fi
done

# 2) Extract thread IDs and check they have required fields
echo ""
echo "Thread tracking:"
thread_count=0
threads_with_status=0
threads_without_status=0

# Look for lines in tables that start with | and contain a thread ID pattern (TH-NNN or similar)
while IFS= read -r line; do
  # Skip header and separator rows
  if echo "$line" | grep -q "^| *Thread\|^| *ID\|^| *-\|^| *$"; then
    continue
  fi
  if echo "$line" | grep -q "^|.*|.*|"; then
    thread_count=$((thread_count + 1))
    # Check if the row has content (not just empty columns)
    content=$(echo "$line" | awk -F'|' '{for(i=2;i<NF;i++) printf "%s", $i}' | tr -d '[:space:]')
    if [[ ${#content} -gt 5 ]]; then
      threads_with_status=$((threads_with_status + 1))
    else
      threads_without_status=$((threads_without_status + 1))
    fi
  fi
done < "$THREADS_FILE"

if [[ $thread_count -gt 0 ]]; then
  echo "  Total thread entries: $thread_count"
  echo "  With content: $threads_with_status"
  if [[ $threads_without_status -gt 0 ]]; then
    WARN=$((WARN + 1))
    WARNINGS+=("series/THREADS.md — $threads_without_status thread entries appear incomplete")
    echo "  ⚠ Incomplete entries: $threads_without_status"
  fi
  PASS=$((PASS + 1))
  echo "  ✓ THREADS.md has thread entries"
else
  echo "  ℹ No thread entries found yet (acceptable for new projects)"
  PASS=$((PASS + 1))
fi

# 3) Check for freshness tag
echo ""
echo "Freshness:"
if grep -q '<!-- reviewed:' "$THREADS_FILE"; then
  PASS=$((PASS + 1))
  echo "  ✓ THREADS.md has freshness tag"
else
  WARN=$((WARN + 1))
  WARNINGS+=("series/THREADS.md — missing freshness tag")
  echo "  ⚠ THREADS.md — missing freshness tag"
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
echo "All thread resolution checks passed."
exit 0
