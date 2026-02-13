# Book_Map Audit Checklist

## Structure (14 checks)

- [ ] All required root files exist (AGENTS.md, CLAUDE.md, CODEX.md, .cursorrules, copilot-instructions.md, BOOK_ARCHITECTURE.md, README.md, .gitignore)
- [ ] docs/ directory exists with _INDEX.md
- [ ] docs/book/ has all 7 spec files
- [ ] docs/decisions/EDR/ has template
- [ ] docs/workflows/ has all 7 workflow files
- [ ] docs/quality/ has scorecard + debt register
- [ ] docs/agent-guide/ has onboarding, common tasks, role cards
- [ ] docs/session/ has SESSION_HANDOFF.md
- [ ] manuscript/ has _INDEX.md and chapters/
- [ ] plans/ has _INDEX.md, _TEMPLATE.md, active/, completed/
- [ ] scripts/ has all 6 validation scripts
- [ ] guide/ has README.md + 12 chapters
- [ ] .claude/skills/ has book-map and session-handoff skills
- [ ] Config files exist (.claude/settings.json, .codex/setup.sh, .cursor/rules/global.mdc)

## Routing Integrity (6 checks)

- [ ] AGENTS.md routes to docs/ (contains "docs/" references)
- [ ] CLAUDE.md routes to docs/
- [ ] CODEX.md routes to docs/
- [ ] .cursorrules routes to docs/
- [ ] copilot-instructions.md routes to docs/
- [ ] No agent entry file exceeds 150 lines

## Documentation Health (5 checks)

- [ ] All docs/ files have `<!-- reviewed: YYYY-MM-DD -->` freshness tags
- [ ] No freshness tags older than 30 days
- [ ] docs/_INDEX.md lists all docs with purposes
- [ ] All routing targets in entry files actually exist
- [ ] No content duplicated between entry files and docs/

## Manuscript Integrity (4 checks)

- [ ] All chapter files have status, updated, outline_ref metadata
- [ ] All status values are valid (Draft, Dev-Edited, Line-Edited, Copy-Edited, Final)
- [ ] manuscript/_INDEX.md matches chapter file statuses
- [ ] Outline coverage: every outline chapter has a file, every file has outline_ref

## Guide Protection (2 checks)

- [ ] guide/ files are not referenced as mutable in any entry file
- [ ] guide/ has all 13 files (README + 12 chapters)

## Plans Health (3 checks)

- [ ] plans/_INDEX.md exists and has active/completed sections
- [ ] plans/_TEMPLATE.md exists with required sections
- [ ] Active plans in plans/active/ are listed in _INDEX.md

## Scripts (2 checks)

- [ ] All 6 scripts are executable
- [ ] All scripts exit 0 when run against current repo
