# Book_Map Audit Checklist

## Structure (16 checks)

- [ ] All required root files exist (AGENTS.md, CLAUDE.md, CODEX.md, .cursorrules, copilot-instructions.md, BOOK_ARCHITECTURE.md, README.md, .gitignore)
- [ ] docs/ directory exists with _INDEX.md
- [ ] docs/book/ has all 5 shared spec files (OVERVIEW, VOICE_GUIDE, STYLE_SHEET, GLOSSARY, FACT_MODEL)
- [ ] docs/decisions/EDR/ has template
- [ ] docs/workflows/ has all 10 workflow files (including series workflows)
- [ ] docs/quality/ has scorecard + debt register
- [ ] docs/agent-guide/ has onboarding, common tasks, role cards (7 roles)
- [ ] docs/session/ has SESSION_HANDOFF.md
- [ ] series/ has all 8 required files
- [ ] books/_INDEX.md exists
- [ ] At least one book exists in books/ with manuscript/_INDEX.md, chapters/, docs/
- [ ] Per-book docs have OUTLINE.md, OVERVIEW.md, and optionally CONTINUITY_BIBLE.md
- [ ] plans/ has _INDEX.md, _TEMPLATE.md, active/, completed/
- [ ] scripts/ has all 8 validation scripts
- [ ] guide/ has README.md + 13 chapters
- [ ] .claude/skills/ has book-map and session-handoff skills

## Routing Integrity (6 checks)

- [ ] AGENTS.md routes to docs/ and series/ (contains appropriate references)
- [ ] CLAUDE.md routes to docs/ and series/
- [ ] CODEX.md routes to docs/ and series/
- [ ] .cursorrules routes to docs/ and series/
- [ ] copilot-instructions.md routes to docs/
- [ ] No agent entry file exceeds 150 lines

## Documentation Health (5 checks)

- [ ] All docs/ files have `<!-- reviewed: YYYY-MM-DD -->` freshness tags
- [ ] No freshness tags older than 30 days
- [ ] docs/_INDEX.md lists all docs with purposes (including series and per-book docs)
- [ ] All routing targets in entry files actually exist
- [ ] No content duplicated between entry files and docs/

## Manuscript Integrity (4 checks)

- [ ] All chapter files have status, updated, outline_ref metadata
- [ ] All status values are valid (Draft, Dev-Edited, Line-Edited, Copy-Edited, Final)
- [ ] Per-book manuscript/_INDEX.md matches chapter file statuses
- [ ] Outline coverage: every outline chapter has a file, every file has outline_ref

## Series Integrity (4 checks)

- [ ] series/ documents all have freshness tags
- [ ] series/THREADS.md has no untracked threads (every thread has an ID and status)
- [ ] series/CHARACTERS.md lists all named characters from the manuscript
- [ ] books/_INDEX.md lists all books in books/

## Guide Protection (2 checks)

- [ ] guide/ files are not referenced as mutable in any entry file
- [ ] guide/ has all 14 files (README + 13 chapters)

## Plans Health (3 checks)

- [ ] plans/_INDEX.md exists and has active/completed sections
- [ ] plans/_TEMPLATE.md exists with required sections
- [ ] Active plans in plans/active/ are listed in _INDEX.md

## Scripts (2 checks)

- [ ] All 8 scripts are executable
- [ ] All scripts exit 0 when run against current repo
