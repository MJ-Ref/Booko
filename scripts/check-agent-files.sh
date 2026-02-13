#!/usr/bin/env bash
# check-agent-files.sh — Validate agent entry files route to docs/ and don't duplicate
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VERBOSE=false
[[ "${1:-}" == "--verbose" ]] && VERBOSE=true

PASS=0
FAIL=0
WARN=0
ERRORS=()
WARNINGS=()

AGENT_FILES=(
  "AGENTS.md"
  "CLAUDE.md"
  "CODEX.md"
  ".cursorrules"
  ".cursor/rules/global.mdc"
  ".github/copilot-instructions.md"
)

echo "Book_Map Agent Files Check"
echo "=========================="
echo ""

for file in "${AGENT_FILES[@]}"; do
  filepath="$REPO_ROOT/$file"

  if [[ ! -f "$filepath" ]]; then
    FAIL=$((FAIL + 1))
    ERRORS+=("$file — file not found")
    echo "  ✗ MISSING: $file"
    continue
  fi

  # Check: routes to docs/
  if grep -q "docs/" "$filepath"; then
    $VERBOSE && echo "  ✓ $file routes to docs/"
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("$file — does not reference docs/")
    echo "  ✗ NO ROUTING: $file does not reference docs/"
    continue
  fi

  # Check: file size (warn if >150 lines — suggests duplication)
  line_count=$(wc -l < "$filepath" | tr -d ' ')
  if [[ $line_count -gt 150 ]]; then
    WARN=$((WARN + 1))
    WARNINGS+=("$file — $line_count lines (>150, may contain duplicated content)")
    echo "  ⚠ LARGE: $file ($line_count lines — consider trimming)"
  else
    $VERBOSE && echo "  ✓ $file is $line_count lines (under 150)"
  fi

  # Check: does not instruct agents to modify guide/
  if grep -i "modify.*guide/" "$filepath" | grep -v -i "never\|don't\|do not\|read.only" &>/dev/null; then
    WARN=$((WARN + 1))
    WARNINGS+=("$file — may instruct agents to modify guide/ (should be read-only)")
    echo "  ⚠ GUIDE WARNING: $file may instruct agents to modify guide/"
  fi

  PASS=$((PASS + 1))
done

# Summary
echo ""
echo "=========================="
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
  echo "Errors:"
  for e in "${ERRORS[@]}"; do
    echo "  - $e"
  done
  exit 1
fi

echo ""
echo "All agent files check passed."
exit 0
