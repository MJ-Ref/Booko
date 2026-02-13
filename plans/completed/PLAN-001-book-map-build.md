# PLAN-001: Book_Map Repository Build

<!-- reviewed: 2026-02-13 -->

## Metadata

- **Plan ID:** PLAN-001
- **Title:** Book_Map Repository Build
- **Status:** Completed
- **Author:** Claude Opus 4.6 + MJ
- **Created:** 2026-02-13
- **Updated:** 2026-02-13
- **Completed:** 2026-02-13

## Objective

**What:** Build the complete Book_Map repository — an agent-first book authoring and editing system adapted from Context_Map.

**Why:** Agent-led book development needs the same structural rigor that Context_Map provides for software development: progressive disclosure, single source of truth, session handoffs, quality scoring, and enforcement scripts — all adapted for the domain of writing books.

## Context

**Background:** Context_Map provides a proven template for agent-led software development. This plan adapts its patterns to book authoring, replacing code concepts with manuscript concepts while preserving the load-bearing architectural patterns.

**Constraints:**
- Generic template (not for a specific book)
- Works for fiction, nonfiction, and memoir
- Preserves all Context_Map core patterns
- guide/ is a balanced blend of methodology + craft reference

**Dependencies:** Context_Map repository as source template.

## Approach

8-phase build: scaffold directories → docs core → manuscript zone → plans infrastructure → enforcement scripts → guide chapters → skills/config → polish. Parallelize independent phases using background agents.

## Phases

### Phase 1: Foundation
- [x] Create all directories
- [x] Write 5 agent entry points (AGENTS.md, CLAUDE.md, CODEX.md, .cursorrules, copilot-instructions.md)
- [x] Write BOOK_ARCHITECTURE.md, README.md, .gitignore

### Phase 2: Docs Core
- [x] Write docs/_INDEX.md (master navigation)
- [x] Write 7 docs/book/ spec files (OVERVIEW, OUTLINE, VOICE_GUIDE, STYLE_SHEET, GLOSSARY, FACT_MODEL, CONTINUITY_BIBLE)
- [x] Write EDR template (docs/decisions/EDR/000-template.md)
- [x] Write 7 workflow docs (AUTHORING, REVISION, LINE_EDIT, COPY_EDIT, FACT_CHECK, PRODUCTION, DOC_GARDENING)
- [x] Write quality docs (QUALITY_SCORECARD, EDITORIAL_DEBT_REGISTER)
- [x] Write agent guide docs (ONBOARDING, COMMON_TASKS, ROLE_CARDS)
- [x] Write SESSION_HANDOFF.md

### Phase 3: Manuscript Zone
- [x] Write manuscript/_INDEX.md
- [x] Write 2 sample chapters (CH-01, CH-02) with metadata headers
- [x] Create front_matter/ and back_matter/ placeholders

### Phase 4: Plans Infrastructure
- [x] Write plans/_INDEX.md
- [x] Write plans/_TEMPLATE.md

### Phase 5: Enforcement Scripts
- [x] Write check-structure.sh
- [x] Write check-doc-freshness.sh
- [x] Write check-agent-files.sh
- [x] Write check-manuscript-metadata.sh
- [x] Write check-outline-coverage.sh
- [x] Write check-style-sheet-terms.sh

### Phase 6: Guide (12 Chapters)
- [x] Write guide/README.md
- [x] Write Act I: Foundations (chapters 01-04)
- [x] Write Act II: Craft (chapters 05-08)
- [x] Write Act III: System (chapters 09-12)

### Phase 7: Skills + Config
- [x] Write .claude/skills/book-map/ (SKILL.md + 3 references)
- [x] Write .claude/skills/session-handoff/ (SKILL.md + 1 reference)
- [x] Write .claude/settings.json
- [x] Write .codex/setup.sh
- [x] Write .cursor/rules/global.mdc

### Phase 8: Polish
- [x] Write PLAN-001 (this file)
- [x] Run validation scripts
- [x] Verify 3-hop navigation

## Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| Internal content drift between agents | Medium | Medium | Cross-reference checks, validation scripts |
| Guide chapters inconsistent in style | Low | Low | Consistent 4-section format enforced in prompts |
| Scripts fail on macOS | Low | Medium | Use POSIX-compatible constructs, test on macOS |
| Duplicate content across entry files | Low | High | Entry files route only, validated by check-agent-files.sh |

## Success Criteria

- [x] All 6 validation scripts pass with zero failures
- [x] Agent can navigate from AGENTS.md to any doc in ≤3 hops
- [x] All docs have valid `<!-- reviewed: YYYY-MM-DD -->` freshness tags
- [x] All 5 agent entry files route to docs/ without duplicating content
- [x] All 12 guide chapters written with consistent format
- [x] Manuscript sample chapters have proper metadata headers
- [x] Quality scorecard dimensions sum to 100%

## References

- [Context_Map source](Context_Map-main/)
- [BOOK_ARCHITECTURE.md](../../BOOK_ARCHITECTURE.md)
- [docs/_INDEX.md](../../docs/_INDEX.md)
