# Documentation Index
<!-- reviewed: 2026-02-13 -->

> Master navigation index for the Book_Map documentation system.
> Every document in `docs/` must appear in one of the tables below.
> Per-book documents live in `books/book-NN/docs/`. Series documents live in `series/`.

---

## Shared Book Architecture (series-wide)

| Document | Purpose | Reviewed |
|---|---|---|
| [OVERVIEW.md](book/OVERVIEW.md) | Book premise, audience, thesis, scope (series-level defaults) | 2026-02-13 |
| [VOICE_GUIDE.md](book/VOICE_GUIDE.md) | Tone, register, POV rules, voice specification | 2026-02-13 |
| [STYLE_SHEET.md](book/STYLE_SHEET.md) | Canonical terms, spelling, formatting conventions | 2026-02-13 |
| [GLOSSARY.md](book/GLOSSARY.md) | Canonical term definitions | 2026-02-13 |
| [FACT_MODEL.md](book/FACT_MODEL.md) | Claim categories, citation rules, source register | 2026-02-13 |

## Per-Book Documents

| Document | Purpose | Reviewed |
|---|---|---|
| [Book 01 OUTLINE.md](../books/book-01/docs/book/OUTLINE.md) | Chapter contracts for Book 01 | 2026-02-13 |
| [Book 01 CONTINUITY_BIBLE.md](../books/book-01/docs/book/CONTINUITY_BIBLE.md) | Continuity tracking for Book 01 | 2026-02-13 |
| [Book 01 OVERVIEW.md](../books/book-01/docs/book/OVERVIEW.md) | Book-specific premise for Book 01 | 2026-02-13 |
| [Book 01 Manuscript Index](../books/book-01/manuscript/_INDEX.md) | Chapter status table for Book 01 | 2026-02-13 |

## Series Documents

| Document | Purpose | Reviewed |
|---|---|---|
| [SERIES_OVERVIEW.md](../series/SERIES_OVERVIEW.md) | Series premise, arc, planned books, reading order | 2026-02-13 |
| [SERIES_ARC.md](../series/SERIES_ARC.md) | Macro plot/argument structure across all books | 2026-02-13 |
| [CHARACTERS.md](../series/CHARACTERS.md) | Series-wide character tracker and cross-book arcs | 2026-02-13 |
| [WORLD.md](../series/WORLD.md) | World-building bible shared across books | 2026-02-13 |
| [TIMELINE.md](../series/TIMELINE.md) | Master chronological timeline | 2026-02-13 |
| [THREADS.md](../series/THREADS.md) | Plot thread tracker across the series | 2026-02-13 |
| [READER_KNOWLEDGE.md](../series/READER_KNOWLEDGE.md) | Reader knowledge state at book boundaries | 2026-02-13 |
| [RETROACTIVE_LOG.md](../series/RETROACTIVE_LOG.md) | Retroactive continuity change log | 2026-02-13 |
| [Books Index](../books/_INDEX.md) | Series-level book status tracker | 2026-02-13 |

## Editorial Decisions

| Document | Purpose | Reviewed |
|---|---|---|
| [000-template.md](decisions/EDR/000-template.md) | EDR template for recording editorial decisions | 2026-02-13 |
| *(EDRs added here as created)* | | |

## Workflows

| Document | Purpose | Reviewed |
|---|---|---|
| [AUTHORING.md](workflows/AUTHORING.md) | Chapter drafting from outline contract | 2026-02-13 |
| [REVISION.md](workflows/REVISION.md) | Developmental editing pass | 2026-02-13 |
| [LINE_EDIT.md](workflows/LINE_EDIT.md) | Line editing pass | 2026-02-13 |
| [COPY_EDIT.md](workflows/COPY_EDIT.md) | Copy editing pass | 2026-02-13 |
| [FACT_CHECK.md](workflows/FACT_CHECK.md) | Research verification and fact checking | 2026-02-13 |
| [PRODUCTION.md](workflows/PRODUCTION.md) | Export formatting and final assembly | 2026-02-13 |
| [DOC_GARDENING.md](workflows/DOC_GARDENING.md) | Documentation maintenance | 2026-02-13 |
| [SERIES_PLANNING.md](workflows/SERIES_PLANNING.md) | Series arc planning and book boundaries | 2026-02-13 |
| [BOOK_HANDOFF.md](workflows/BOOK_HANDOFF.md) | Transitioning between books in a series | 2026-02-13 |
| [RETROACTIVE_CHANGE.md](workflows/RETROACTIVE_CHANGE.md) | Managing retroactive continuity changes | 2026-02-13 |

## Quality

| Document | Purpose | Reviewed |
|---|---|---|
| [QUALITY_SCORECARD.md](quality/QUALITY_SCORECARD.md) | Chapter quality rubric and scoring criteria | 2026-02-13 |
| [EDITORIAL_DEBT_REGISTER.md](quality/EDITORIAL_DEBT_REGISTER.md) | Tracked editorial debt items | 2026-02-13 |

## Agent Guide

| Document | Purpose | Reviewed |
|---|---|---|
| [ONBOARDING.md](agent-guide/ONBOARDING.md) | First-time agent orientation | 2026-02-13 |
| [COMMON_TASKS.md](agent-guide/COMMON_TASKS.md) | Step-by-step recipe library for standard tasks | 2026-02-13 |
| [ROLE_CARDS.md](agent-guide/ROLE_CARDS.md) | Agent role definitions and boundaries | 2026-02-13 |

## Session

| Document | Purpose | Reviewed |
|---|---|---|
| [SESSION_HANDOFF.md](session/SESSION_HANDOFF.md) | Live session continuity snapshot | 2026-02-13 |

---

## Freshness Policy

All documents carry a `<!-- reviewed: YYYY-MM-DD -->` tag. The default freshness threshold is **30 days**. Any document not reviewed within 30 days of its tag date should be re-read and re-validated before relying on its contents. When you review a document, update its freshness tag to the current date even if no content changes were needed.

Run `scripts/check-doc-freshness.sh` to identify stale documents.
