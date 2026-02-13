# PLAN-002: Series Management

<!-- reviewed: 2026-02-13 -->

## Metadata

- **Plan ID:** PLAN-002
- **Title:** Series Management — Reorganization and Series-Level Documents
- **Status:** Completed
- **Author:** Claude Opus 4.6 + MJ
- **Created:** 2026-02-13
- **Updated:** 2026-02-13
- **Completed:** 2026-02-13

## Objective

**What:** Add multi-book series management to Book_Map — reorganize from single-book (`manuscript/` at root) to multi-book (`books/book-NN/`) structure, create a `series/` document layer for cross-book continuity, and add workflows, scripts, roles, and guide content for series development.

**Why:** A single-book system cannot manage the state that spans multiple books: plot threads, character arcs, world rules, timeline, reader knowledge, and handoff protocols. Without explicit series management, multi-book projects suffer from thread amnesia, voice drift, world contradictions, and handoff failures.

## Context

**Background:** Book_Map (PLAN-001) was built as a single-book system with `manuscript/` at the repo root. The user decided on a single-repo architecture with `books/` replacing `manuscript/` and a new `series/` zone alongside it.

**Constraints:**
- Single repo (not separate repos per book)
- Reorganize existing structure (books/ replaces manuscript/)
- Shared docs remain at root, per-book docs move into books/book-NN/
- All existing validation scripts must continue to pass

**Dependencies:** Completed PLAN-001 (Book_Map build).

## Approach

8-phase execution: reorganize filesystem → create series documents → update path references → update scripts → new workflows → guide chapter 13 → skills/roles → verification. Phases 4-7 parallelized across agents.

## Phases

### Phase 1: Reorganize manuscript/ → books/book-01/
- [x] Create books/book-01/manuscript/ and books/book-01/docs/book/ directories
- [x] git mv manuscript/chapters, front_matter, back_matter, _INDEX.md → books/book-01/manuscript/
- [x] git mv docs/book/OUTLINE.md, CONTINUITY_BIBLE.md → books/book-01/docs/book/
- [x] Remove empty manuscript/ directory
- [x] Create series/ and series/handoffs/ directories

### Phase 2: New Series-Level Documents (12 files)
- [x] series/SERIES_OVERVIEW.md — premise, promise, scope, reading order
- [x] series/SERIES_ARC.md — macro plot structure across all books
- [x] series/CHARACTERS.md — cross-book character tracker
- [x] series/WORLD.md — world-building bible
- [x] series/TIMELINE.md — master chronological timeline
- [x] series/THREADS.md — plot thread tracker (introduced → resolved)
- [x] series/READER_KNOWLEDGE.md — what the reader knows at each boundary
- [x] series/RETROACTIVE_LOG.md — retroactive continuity change log
- [x] series/handoffs/BOOK-01-TO-02.md — handoff template
- [x] books/_INDEX.md — series-level book status tracker
- [x] books/book-01/docs/_INDEX.md — per-book doc index
- [x] books/book-01/docs/book/OVERVIEW.md — per-book premise

### Phase 3: Update All Path References (~22 files)
- [x] AGENTS.md — routing table + series routes
- [x] CLAUDE.md — routing + /book-map add-book skill
- [x] CODEX.md — manuscript → books paths + series route
- [x] .cursorrules — updated paths + series references
- [x] .github/copilot-instructions.md — outline path
- [x] BOOK_ARCHITECTURE.md — content zones, key docs, enforcement count
- [x] README.md — structure diagram, script list, guide count
- [x] docs/_INDEX.md — full rewrite with series sections
- [x] docs/workflows/AUTHORING.md, REVISION.md, LINE_EDIT.md, COPY_EDIT.md, PRODUCTION.md — manuscript → books paths
- [x] docs/agent-guide/COMMON_TASKS.md — recipe paths + series references
- [x] docs/agent-guide/ROLE_CARDS.md — ownership paths + Series Continuity Editor role
- [x] books/book-01/docs/book/OUTLINE.md — relative paths + series links
- [x] books/book-01/manuscript/chapters/CH-01.md, CH-02.md, CH-03.md — outline_ref metadata

### Phase 4: Update Scripts + 2 New Scripts
- [x] scripts/check-structure.sh — full rewrite (series/, books/, 8 scripts, 13 guide chapters)
- [x] scripts/check-outline-coverage.sh — per-book iteration
- [x] scripts/check-manuscript-metadata.sh — per-book iteration
- [x] scripts/check-style-sheet-terms.sh — per-book iteration, shared style sheet
- [x] scripts/check-series-continuity.sh — NEW (series files, freshness, index consistency)
- [x] scripts/check-thread-resolution.sh — NEW (thread sections, entries, freshness)

### Phase 5: New Series Workflows (3 files)
- [x] docs/workflows/SERIES_PLANNING.md — 9-step series arc planning
- [x] docs/workflows/BOOK_HANDOFF.md — 10-step book transition procedure
- [x] docs/workflows/RETROACTIVE_CHANGE.md — 9-step retroactive change process

### Phase 6: Guide Chapter 13
- [x] guide/13-series-management.md — 4-section format (Challenge/Principle/Practice/By Book Type)
- [x] guide/README.md — updated chapter table, act range, directory diagram, completeness note

### Phase 7: Skills + Role Updates
- [x] .claude/skills/book-map/SKILL.md — added /book-map add-book subcommand
- [x] .claude/skills/book-map/references/directory-spec.md — series-aware structure
- [x] .claude/skills/book-map/references/checklist.md — series integrity checks
- [x] .claude/skills/book-map/references/remediation.md — series remediation items
- [x] docs/agent-guide/ROLE_CARDS.md — Series Continuity Editor (role #7)

### Phase 8: Verification
- [x] scripts/check-structure.sh — 84 passed, 0 failed
- [x] scripts/check-doc-freshness.sh — 23 fresh, 0 stale
- [x] scripts/check-agent-files.sh — 6 passed, 0 failed
- [x] scripts/check-manuscript-metadata.sh — 3 passed, 0 failed
- [x] scripts/check-outline-coverage.sh — 6 passed, 0 failed
- [x] scripts/check-style-sheet-terms.sh — 3 clean, 0 issues, 4 warnings (Draft markers OK)
- [x] scripts/check-series-continuity.sh — 19 passed, 0 failed
- [x] scripts/check-thread-resolution.sh — 5 passed, 0 failed

## File Count Impact

- **Moved:** 7 files (manuscript → books/book-01/)
- **New series/ files:** 9
- **New books/ scaffolding:** 3
- **New workflows:** 3
- **New guide chapter:** 1
- **New scripts:** 2
- **Updated files:** ~22 (path refs, routing tables, scripts, skills)
- **Total new/moved: ~18 files, ~22 files updated**

## Key Decisions

1. **Shared vs per-book docs:** VOICE_GUIDE, STYLE_SHEET, GLOSSARY, FACT_MODEL stay at root (series-wide). OUTLINE, CONTINUITY_BIBLE move to per-book (each book has its own).
2. **Per-book iteration pattern:** All scripts use `for book_dir in "$REPO_ROOT"/books/book-*/;` to automatically handle additional books.
3. **Series Continuity Editor:** New agent role (#7) owns series/ and cross-book consistency.
4. **`/book-map add-book` skill:** Scaffolds new books with correct directory structure and index updates.

## Outcome

All 8 validation scripts pass. Book_Map now supports multi-book series with explicit continuity tracking, handoff protocols, thread accounting, and reader knowledge management.
