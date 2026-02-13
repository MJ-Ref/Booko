# Book_Map

An agent-first book authoring and editing system. Adapted from [Context_Map](https://github.com/MJ-Ref/Context_Map) for managing book projects with AI agents.

## What This Is

Book_Map applies the same principles that make agent-led software development work — progressive disclosure, single source of truth, session handoffs, quality scoring, enforcement scripts — to the domain of writing books.

It manages the full lifecycle: from blank page through drafting, developmental editing, line editing, copy editing, and production — keeping agents aligned with voice, structure, and editorial standards across sessions.

## Quick Start

**For agents:** Start at [AGENTS.md](AGENTS.md) (or your platform-specific entry file).

**For humans:** Start here.

### Repository Structure

```
docs/                  Shared operational truth (voice, style, workflows, quality)
  book/                Shared book architecture (voice, style, glossary, fact model)
  decisions/EDR/       Editorial Decision Records
  workflows/           Drafting, editing, and series workflows
  quality/             Quality scorecard + editorial debt
  agent-guide/         Agent onboarding, tasks, roles
  session/             Session handoff
series/                Series-level continuity (arc, characters, world, threads)
books/                 Per-book content
  book-01/
    manuscript/        Chapters, front/back matter
    docs/book/         Per-book docs (outline, continuity bible, overview)
plans/                 Execution plans (temporal, lifecycle-bound)
scripts/               Validation and enforcement (read-only)
guide/                 Methodology + craft reference (read-only)
```

### Key Principles

1. **The repo is the system** — structure encodes the methodology
2. **Single source of truth** — content exists once, pointers replace duplication
3. **Progressive disclosure** — entry file → index → detail in ≤3 hops
4. **Docs are system of record** — if it is in `docs/`, it is true
5. **Separate temporal from evergreen** — plans vs docs vs guide
6. **Enforce what matters** — validation scripts check structural invariants
7. **Editorial decisions are recorded** — EDRs prevent re-litigation
8. **Freshness is measurable** — every doc has a review date
9. **Agent ergonomics over aesthetics** — structure for parseability
10. **Minimize coordination cost** — session handoffs capture state

### Validation Scripts

```bash
scripts/check-structure.sh            # Required files/dirs exist
scripts/check-doc-freshness.sh        # Docs reviewed within 30 days
scripts/check-agent-files.sh          # Entry files route correctly
scripts/check-manuscript-metadata.sh  # Chapter metadata present
scripts/check-outline-coverage.sh     # Outline ↔ chapter mapping
scripts/check-style-sheet-terms.sh    # Forbidden terms flagged
scripts/check-series-continuity.sh    # Series documents consistent
scripts/check-thread-resolution.sh    # Plot threads tracked to resolution
```

### Guide

The `guide/` directory contains 13 chapters covering the Book_Map methodology, book development craft, and series management. See [guide/README.md](guide/README.md) for the chapter listing.

## License

MIT
