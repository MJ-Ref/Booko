# Book_Map — OpenAI Codex Entry Point

<!-- reviewed: 2026-02-13 -->

You are working on a **book project** managed by the Book_Map system.
Route to `docs/` for all operational details. **Do not duplicate content here.**

## Routing

| I need to...                        | Go to                                      |
|-------------------------------------|--------------------------------------------|
| Understand the book                 | docs/book/OVERVIEW.md                      |
| See chapter contracts               | docs/book/OUTLINE.md                       |
| Check voice rules                   | docs/book/VOICE_GUIDE.md                   |
| Check terms/spelling                | docs/book/STYLE_SHEET.md                   |
| See all docs                        | docs/_INDEX.md                             |
| See manuscript status               | manuscript/_INDEX.md                       |
| Resume from last session            | docs/session/SESSION_HANDOFF.md            |
| Get oriented                        | docs/agent-guide/ONBOARDING.md             |

## Rules

1. `docs/` is the system of record.
2. `guide/` is read-only — never modify.
3. One editorial pass per session. Do not mix drafting with editing.
4. Update freshness dates on every doc you touch.
5. Update session handoff at end of session.
6. Every chapter file needs metadata headers (status, updated, outline_ref).
7. Record irreversible editorial decisions as EDRs.
8. Run validation scripts before committing.

## Sandbox Setup

See `.codex/setup.sh` for environment initialization.
