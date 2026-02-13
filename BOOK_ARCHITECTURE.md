# Book_Map Architecture

<!-- reviewed: 2026-02-13 -->

Short router to architecture details. For the full picture, see [docs/book/OVERVIEW.md](docs/book/OVERVIEW.md).

## Content Zones

| Zone          | Purpose                    | Mutable? | Lifecycle              |
|---------------|----------------------------|----------|------------------------|
| `docs/`       | Operational truth          | Yes      | Evergreen (maintained) |
| `manuscript/` | The book content           | Yes      | Stage-gated            |
| `plans/`      | Execution artifacts        | Yes      | Temporal (lifecycle)   |
| `guide/`      | Methodology + craft ref    | No       | Read-only              |
| `scripts/`    | Validation + enforcement   | Rarely   | Stable                 |

## Progressive Disclosure

Entry file (~60 lines) → Master index → Specific doc/chapter → Detail

All agent entry files route to `docs/`. They never duplicate content.

## Key Architectural Documents

- [docs/book/OVERVIEW.md](docs/book/OVERVIEW.md) — book premise, audience, promise
- [docs/book/OUTLINE.md](docs/book/OUTLINE.md) — chapter contracts
- [docs/book/VOICE_GUIDE.md](docs/book/VOICE_GUIDE.md) — voice specification
- [docs/book/STYLE_SHEET.md](docs/book/STYLE_SHEET.md) — terminology and formatting
- [docs/decisions/EDR/](docs/decisions/EDR/) — editorial decision records

## Enforcement

Six validation scripts in `scripts/` enforce structural invariants, doc freshness, manuscript metadata, outline coverage, and style consistency. All are read-only — they report but never modify.
