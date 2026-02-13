# Book_Map — Claude Code Entry Point

<!-- reviewed: 2026-02-13 -->

You are working on a **book project** managed by the Book_Map system.
Start here. Route to `docs/` for details. **Never duplicate docs/ content in this file.**

## Quick Routing

| I need to...                        | Go to                                      |
|-------------------------------------|--------------------------------------------|
| Understand the book                 | [docs/book/OVERVIEW.md](docs/book/OVERVIEW.md) |
| See chapter contracts               | [books/book-01/docs/book/OUTLINE.md](books/book-01/docs/book/OUTLINE.md) |
| Check voice rules                   | [docs/book/VOICE_GUIDE.md](docs/book/VOICE_GUIDE.md) |
| Check terms/spelling                | [docs/book/STYLE_SHEET.md](docs/book/STYLE_SHEET.md) |
| See all docs                        | [docs/_INDEX.md](docs/_INDEX.md)           |
| See book/series status              | [books/_INDEX.md](books/_INDEX.md)         |
| See series overview                 | [series/SERIES_OVERVIEW.md](series/SERIES_OVERVIEW.md) |
| See plans                           | [plans/_INDEX.md](plans/_INDEX.md)         |
| Resume from last session            | [docs/session/SESSION_HANDOFF.md](docs/session/SESSION_HANDOFF.md) |
| Get oriented (first time)           | [docs/agent-guide/ONBOARDING.md](docs/agent-guide/ONBOARDING.md) |

## Session Protocol

1. **Start:** Read [SESSION_HANDOFF.md](docs/session/SESSION_HANDOFF.md) → Read active plan → Open relevant chapter + voice guide
2. **Work:** Follow the appropriate [workflow](docs/workflows/) for your editorial stage. One pass per session.
3. **Quality:** Check against [QUALITY_SCORECARD.md](docs/quality/QUALITY_SCORECARD.md). Run validation scripts.
4. **End:** Update [SESSION_HANDOFF.md](docs/session/SESSION_HANDOFF.md). Include narrative temperature, last passage, dangling threads.

## Available Skills

- `/book-map scaffold` — Scaffold Book_Map structure in a new project
- `/book-map audit` — Audit project against Book_Map standard
- `/book-map add-book` — Add a new book to the series
- `/session-handoff` — Generate session handoff document

## Commit Conventions

Format: `type(scope): description`

Types: `draft`, `edit`, `docs`, `plan`, `session`, `fix`, `chore`, `style`

Examples:
- `draft(ch-03): complete first draft of chapter 3`
- `edit(ch-01): developmental revision — restructure opening`
- `docs(voice): update voice guide with dialogue conventions`
- `plan: create PLAN-003 for line edit pass`
- `session: update handoff 2026-02-13`

## Key Constraints

- `docs/` is the system of record — trust it over everything else
- `guide/` is read-only — never modify
- One editorial pass per session — do not mix drafting with editing
- Every chapter file needs metadata headers (status, updated, outline_ref)
- Record irreversible editorial decisions as EDRs in `docs/decisions/EDR/`
- Update freshness dates (`<!-- reviewed: YYYY-MM-DD -->`) on every doc you touch
