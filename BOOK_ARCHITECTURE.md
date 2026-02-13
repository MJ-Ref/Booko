# Book_Map Architecture

<!-- reviewed: 2026-02-13 -->

Short router to architecture details. For the full picture, see [docs/book/OVERVIEW.md](docs/book/OVERVIEW.md).

## Content Zones

| Zone          | Purpose                    | Mutable? | Lifecycle              |
|---------------|----------------------------|----------|------------------------|
| `docs/`       | Operational truth (shared) | Yes      | Evergreen (maintained) |
| `series/`     | Series-level continuity    | Yes      | Evergreen (cross-book) |
| `books/`      | Per-book content + docs    | Yes      | Stage-gated            |
| `plans/`      | Execution artifacts        | Yes      | Temporal (lifecycle)   |
| `guide/`      | Methodology + craft ref    | No       | Read-only              |
| `scripts/`    | Validation + enforcement   | Rarely   | Stable                 |

## Progressive Disclosure

Entry file (~60 lines) → Master index → Specific doc/chapter → Detail

All agent entry files route to `docs/`. They never duplicate content.

## Key Architectural Documents

- [series/SERIES_OVERVIEW.md](series/SERIES_OVERVIEW.md) — series premise and arc
- [books/_INDEX.md](books/_INDEX.md) — book status tracker
- [books/book-01/docs/book/OUTLINE.md](books/book-01/docs/book/OUTLINE.md) — chapter contracts (per-book)
- [docs/book/VOICE_GUIDE.md](docs/book/VOICE_GUIDE.md) — voice specification (series-wide)
- [docs/book/STYLE_SHEET.md](docs/book/STYLE_SHEET.md) — terminology and formatting (series-wide)
- [docs/decisions/EDR/](docs/decisions/EDR/) — editorial decision records

## Enforcement

Eight validation scripts in `scripts/` enforce structural invariants, doc freshness, manuscript metadata, outline coverage, style consistency, series continuity, and thread resolution. All are read-only — they report but never modify.
