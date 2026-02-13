#!/usr/bin/env bash
# check-structure.sh — Validate all required Book_Map files and directories exist
# Read-only: reports but never modifies.
# Exit 0 on success, 1 on failure.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VERBOSE=false
[[ "${1:-}" == "--verbose" ]] && VERBOSE=true

PASS=0
FAIL=0
ERRORS=()

check() {
  local path="$1"
  local desc="$2"
  if [[ -e "$REPO_ROOT/$path" ]]; then
    PASS=$((PASS + 1))
    if $VERBOSE; then echo "  ✓ $path"; fi
  else
    FAIL=$((FAIL + 1))
    ERRORS+=("$path — $desc")
    echo "  ✗ MISSING: $path — $desc"
  fi
}

echo "Book_Map Structure Check"
echo "========================"
echo ""

# Root files
echo "Root files:"
check "AGENTS.md"                         "Universal agent entry point"
check "CLAUDE.md"                         "Claude Code entry point"
check "CODEX.md"                          "OpenAI Codex entry point"
check ".cursorrules"                      "Cursor AI entry point"
check ".github/copilot-instructions.md"   "GitHub Copilot entry point"
check "BOOK_ARCHITECTURE.md"              "Architecture router"
check "README.md"                         "Human entry point"
check ".gitignore"                        "Git ignore"

# Docs structure
echo ""
echo "Docs (system of record):"
check "docs/_INDEX.md"                    "Master navigation index"
check "docs/book/OVERVIEW.md"             "Book overview and premise"
check "docs/book/OUTLINE.md"              "Chapter contracts"
check "docs/book/VOICE_GUIDE.md"          "Voice and tone specification"
check "docs/book/STYLE_SHEET.md"          "Terms, spelling, formatting"
check "docs/book/GLOSSARY.md"             "Canonical term definitions"
check "docs/book/FACT_MODEL.md"           "Claim and citation framework"
check "docs/book/CONTINUITY_BIBLE.md"     "Continuity tracking"

echo ""
echo "Editorial decisions:"
check "docs/decisions/EDR/000-template.md" "EDR template"

echo ""
echo "Workflows:"
check "docs/workflows/AUTHORING.md"       "Drafting workflow"
check "docs/workflows/REVISION.md"        "Developmental edit workflow"
check "docs/workflows/LINE_EDIT.md"       "Line edit workflow"
check "docs/workflows/COPY_EDIT.md"       "Copy edit workflow"
check "docs/workflows/FACT_CHECK.md"      "Fact-checking workflow"
check "docs/workflows/PRODUCTION.md"      "Production workflow"
check "docs/workflows/DOC_GARDENING.md"   "Doc maintenance workflow"

echo ""
echo "Quality:"
check "docs/quality/QUALITY_SCORECARD.md"       "Quality scorecard"
check "docs/quality/EDITORIAL_DEBT_REGISTER.md" "Editorial debt register"

echo ""
echo "Agent guide:"
check "docs/agent-guide/ONBOARDING.md"    "Agent onboarding"
check "docs/agent-guide/COMMON_TASKS.md"  "Common task recipes"
check "docs/agent-guide/ROLE_CARDS.md"    "Agent role definitions"

echo ""
echo "Session:"
check "docs/session/SESSION_HANDOFF.md"   "Session handoff"

# Manuscript
echo ""
echo "Manuscript:"
check "manuscript/_INDEX.md"              "Manuscript status index"
check "manuscript/front_matter"           "Front matter directory"
check "manuscript/chapters"               "Chapters directory"
check "manuscript/back_matter"            "Back matter directory"

# Plans
echo ""
echo "Plans:"
check "plans/_INDEX.md"                   "Plan directory index"
check "plans/_TEMPLATE.md"               "Plan template"
check "plans/active"                      "Active plans directory"
check "plans/completed"                   "Completed plans directory"

# Scripts
echo ""
echo "Scripts:"
check "scripts/check-structure.sh"             "Structure validator"
check "scripts/check-doc-freshness.sh"         "Freshness validator"
check "scripts/check-agent-files.sh"           "Agent file validator"
check "scripts/check-manuscript-metadata.sh"   "Manuscript metadata validator"
check "scripts/check-outline-coverage.sh"      "Outline coverage validator"
check "scripts/check-style-sheet-terms.sh"     "Style sheet term validator"

# Guide
echo ""
echo "Guide:"
check "guide/README.md"                        "Guide overview"
check "guide/01-why-book-map-exists.md"        "Chapter 1"
check "guide/02-voice-and-tone.md"             "Chapter 2"
check "guide/03-book-type-and-architecture.md" "Chapter 3"
check "guide/04-prior-art-and-inspiration.md"  "Chapter 4"
check "guide/05-pacing-and-rhythm.md"          "Chapter 5"
check "guide/06-character-and-argument.md"     "Chapter 6"
check "guide/07-editorial-passes.md"           "Chapter 7"
check "guide/08-scenes-and-sections.md"        "Chapter 8"
check "guide/09-agent-collaboration.md"        "Chapter 9"
check "guide/10-momentum-and-failure-modes.md" "Chapter 10"
check "guide/11-quality-scorecard.md"          "Chapter 11"
check "guide/12-skills-and-automation.md"      "Chapter 12"

# Skills
echo ""
echo "Skills:"
check ".claude/skills/book-map/SKILL.md"                "Book_Map skill"
check ".claude/skills/book-map/references/directory-spec.md"  "Directory spec"
check ".claude/skills/book-map/references/checklist.md"       "Audit checklist"
check ".claude/skills/book-map/references/remediation.md"     "Remediation guide"
check ".claude/skills/session-handoff/SKILL.md"               "Session handoff skill"
check ".claude/skills/session-handoff/references/handoff-template.md" "Handoff template"

# Config
echo ""
echo "Config:"
check ".claude/settings.json"             "Claude settings"
check ".codex/setup.sh"                   "Codex setup"
check ".cursor/rules/global.mdc"          "Cursor rules"

# Summary
echo ""
echo "========================"
echo "Results: $PASS passed, $FAIL failed"

if [[ $FAIL -gt 0 ]]; then
  echo ""
  echo "Missing items:"
  for err in "${ERRORS[@]}"; do
    echo "  - $err"
  done
  exit 1
fi

echo "All structure checks passed."
exit 0
