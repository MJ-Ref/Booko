# Documentation Index
<!-- reviewed: 2026-02-13 -->

> Master navigation index for the Book_Map documentation system.
> Every document in `docs/` must appear in one of the tables below.

---

## Book Architecture

| Document | Purpose | Reviewed |
|---|---|---|
| [OVERVIEW.md](book/OVERVIEW.md) | Book premise, audience, thesis, scope | 2026-02-13 |
| [OUTLINE.md](book/OUTLINE.md) | Chapter-by-chapter outline contracts | 2026-02-13 |
| [VOICE_GUIDE.md](book/VOICE_GUIDE.md) | Tone, register, POV rules, style sheet | 2026-02-13 |
| [CHARACTERS.md](book/CHARACTERS.md) | Character profiles, arcs, relationship map | 2026-02-13 |
| [WORLD.md](book/WORLD.md) | Setting, world-building rules, timeline | 2026-02-13 |
| [THEMES.md](book/THEMES.md) | Thematic threads, motifs, symbolic register | 2026-02-13 |
| [RESEARCH.md](book/RESEARCH.md) | Source log, fact claims, citation index | 2026-02-13 |

## Editorial Decisions

| Document | Purpose | Reviewed |
|---|---|---|
| [_TEMPLATE.md](decisions/_TEMPLATE.md) | EDR template for recording editorial decisions | 2026-02-13 |
| *(EDRs added here as created)* | | |

## Workflows

| Document | Purpose | Reviewed |
|---|---|---|
| [DRAFTING.md](workflows/DRAFTING.md) | Chapter drafting from outline contract | 2026-02-13 |
| [DEV_EDIT.md](workflows/DEV_EDIT.md) | Developmental editing pass | 2026-02-13 |
| [LINE_EDIT.md](workflows/LINE_EDIT.md) | Line editing pass | 2026-02-13 |
| [COPY_EDIT.md](workflows/COPY_EDIT.md) | Copy editing pass | 2026-02-13 |
| [FACT_CHECK.md](workflows/FACT_CHECK.md) | Research verification and fact checking | 2026-02-13 |
| [PRODUCTION.md](workflows/PRODUCTION.md) | Export formatting and final assembly | 2026-02-13 |
| [PLAN_EXECUTION.md](workflows/PLAN_EXECUTION.md) | How to run an execution plan | 2026-02-13 |

## Quality

| Document | Purpose | Reviewed |
|---|---|---|
| [SCORECARD.md](quality/SCORECARD.md) | Chapter quality rubric and scoring criteria | 2026-02-13 |
| [DEBT_REGISTER.md](quality/DEBT_REGISTER.md) | Tracked editorial debt items (TK, TODO, known issues) | 2026-02-13 |

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

Scripts in `scripts/` can audit freshness programmatically. Run `scripts/check_freshness.sh` to identify stale documents.
