# Book_Map — Agent Entry Point

<!-- reviewed: 2026-02-13 -->

You are working on a **book project** managed by the Book_Map system.
This file routes you to the system of record. **Do not duplicate content from docs/ here.**

## Routing Table

| I need to...                        | Go to                                      |
|-------------------------------------|--------------------------------------------|
| Understand the book's purpose       | [docs/book/OVERVIEW.md](docs/book/OVERVIEW.md) |
| See the chapter outline/contracts   | [books/book-01/docs/book/OUTLINE.md](books/book-01/docs/book/OUTLINE.md) |
| Check voice and tone rules          | [docs/book/VOICE_GUIDE.md](docs/book/VOICE_GUIDE.md) |
| Look up canonical terms/spelling    | [docs/book/STYLE_SHEET.md](docs/book/STYLE_SHEET.md) |
| Look up term definitions            | [docs/book/GLOSSARY.md](docs/book/GLOSSARY.md) |
| Check fact/citation rules           | [docs/book/FACT_MODEL.md](docs/book/FACT_MODEL.md) |
| Check continuity (per-book)         | [books/book-01/docs/book/CONTINUITY_BIBLE.md](books/book-01/docs/book/CONTINUITY_BIBLE.md) |
| See all docs at a glance            | [docs/_INDEX.md](docs/_INDEX.md)           |
| See manuscript status               | [books/_INDEX.md](books/_INDEX.md) (series) or [books/book-01/manuscript/_INDEX.md](books/book-01/manuscript/_INDEX.md) (per-book) |
| See series overview                 | [series/SERIES_OVERVIEW.md](series/SERIES_OVERVIEW.md) |
| Track plot threads across books     | [series/THREADS.md](series/THREADS.md)     |
| Check series continuity             | [series/CHARACTERS.md](series/CHARACTERS.md), [series/TIMELINE.md](series/TIMELINE.md) |
| See current/past plans              | [plans/_INDEX.md](plans/_INDEX.md)         |
| Understand my role                  | [docs/agent-guide/ROLE_CARDS.md](docs/agent-guide/ROLE_CARDS.md) |
| Learn common tasks                  | [docs/agent-guide/COMMON_TASKS.md](docs/agent-guide/COMMON_TASKS.md) |
| Get oriented (first time)           | [docs/agent-guide/ONBOARDING.md](docs/agent-guide/ONBOARDING.md) |
| Resume from last session            | [docs/session/SESSION_HANDOFF.md](docs/session/SESSION_HANDOFF.md) |
| Understand editorial workflow       | [docs/workflows/AUTHORING.md](docs/workflows/AUTHORING.md) |
| Check quality standards             | [docs/quality/QUALITY_SCORECARD.md](docs/quality/QUALITY_SCORECARD.md) |
| Review editorial decisions          | [docs/decisions/EDR/](docs/decisions/EDR/) |
| Read the methodology guide          | [guide/README.md](guide/README.md)         |

## Non-Negotiable Rules

1. **`docs/` is the system of record.** If it is written in docs/, it is true. If it contradicts anything else, docs/ wins.
2. **`guide/` is read-only.** Never modify files in guide/. It is reference material.
3. **Plans are temporal.** `plans/active/` is work in flight. `plans/completed/` is history. `docs/` is evergreen.
4. **Always update freshness dates.** Every doc you touch gets `<!-- reviewed: YYYY-MM-DD -->` updated.
5. **Run validation scripts before committing.** See `scripts/` for available checks.
6. **Record irreversible editorial decisions in EDRs.** Voice changes, structure changes, terminology changes.
7. **Update session handoff at end of every session.** Non-negotiable.
8. **Manuscript files require metadata headers.** Status, updated date, outline reference.
9. **One editorial pass per session.** Do not mix drafting with line editing. Stay in your lane.
