# Series Threads

<!-- reviewed: 2026-02-13 -->

> Plot thread tracker across the entire series.
> Every narrative thread, subplot, mystery, or unresolved question is tracked here.
> This file prevents dropped threads and ensures deliberate resolution.
>
> **Update this file whenever a thread is introduced, advanced, or resolved.**

---

## Active Threads

<!-- Threads that have been introduced and are not yet resolved. -->

| Thread ID | Description | Introduced In | Last Advanced In | Status | Target Resolution |
|-----------|-------------|---------------|------------------|--------|-------------------|
| THR-001 | [e.g., "Who killed the king?"] | book-01, CH-03 | book-01, CH-10 | Active | book-02 |
| THR-002 | [e.g., "Character A's search for their birth parents"] | book-01, CH-01 | book-01, CH-12 | Active | book-03 |
| THR-003 | [e.g., "The spreading blight in the eastern provinces"] | book-01, CH-07 | book-01, CH-12 | Active | book-03 |

---

## Resolved Threads

<!-- Threads that have been fully resolved. Move threads here from Active when resolved. -->

| Thread ID | Description | Introduced In | Resolved In | Resolution |
|-----------|-------------|---------------|-------------|------------|
| *(no resolved threads yet)* | | | | |

<!-- Example: -->
<!-- | THR-004 | "The missing letter" | book-01, CH-02 | book-01, CH-11 | Letter found in the attic; revealed father's secret | -->

---

## Dangling Threads

<!-- Threads that appear to have been dropped or forgotten. Flagged for review. -->

| Thread ID | Description | Introduced In | Last Referenced In | Notes |
|-----------|-------------|---------------|--------------------|-------|
| *(no dangling threads)* | | | | |

<!-- A thread is "dangling" if it has not been advanced or referenced in 2+ books -->
<!-- since introduction AND is not in the Resolved table. -->
<!-- Dangling does not mean "bad" -- it means "needs a decision: resolve, reference, or cut." -->

---

## Thread Categories

### Major Threads (Series-Spanning)

<!-- Threads that span the entire series. These MUST be resolved by series end. -->

| Thread ID | Description | Spans |
|-----------|-------------|-------|
| THR-001 | [Series-level mystery or conflict] | book-01 through book-03 |
| THR-002 | [Series-level character goal] | book-01 through book-03 |

### Minor Threads (Single-Book)

<!-- Threads that open and close within a single book. -->

| Thread ID | Description | Book |
|-----------|-------------|------|
| *(tracked in per-book CONTINUITY_BIBLE.md)* | | |

<!-- Minor threads are primarily tracked in each book's CONTINUITY_BIBLE.md. -->
<!-- Only list them here if they unexpectedly carry over into another book. -->

### Recurring Threads (Multi-Book, Not Series-Spanning)

<!-- Threads that appear in multiple books but do not span the full series. -->

| Thread ID | Description | Appears In | Notes |
|-----------|-------------|-----------|-------|
| THR-003 | [e.g., "The blight subplot"] | book-01, book-02 | [Resolved in book-02; does not carry into book-03] |

---

## Thread Resolution Rules

1. **Every Major thread MUST be resolved by the final book.** No exceptions. An unresolved Major thread is a series-level defect.
2. **Minor threads SHOULD be resolved within their book.** If a Minor thread carries over, promote it to Recurring or Major.
3. **Recurring threads MUST be resolved OR explicitly acknowledged as unresolved** (e.g., a character says "we never did find out about X" -- deliberate ambiguity is a valid resolution).
4. **Dangling threads must be reviewed at each book boundary.** Before starting a new book, review all Dangling threads and decide: advance, resolve, or cut.
5. **Cutting a thread requires an EDR** if it was referenced in published/final text.

---

## Foreshadowing Register

<!-- Hints, seeds, and setups planted in earlier books for later payoff. -->

| ID | Foreshadowing Element | Planted In | Payoff Target | Payoff Delivered? | Notes |
|----|-----------------------|-----------|---------------|-------------------|-------|
| FS-001 | [e.g., "The scar on Character B's hand is described twice"] | book-01, CH-03 | book-02, CH-08 | [ ] | [Scar's origin revealed in book-02] |
| FS-002 | [e.g., "The old map in the library shows a fourth province"] | book-01, CH-06 | book-03, CH-01 | [ ] | [Fourth province becomes central to book-03] |
| FS-003 | [e.g., "Character A dreams of water repeatedly"] | book-01, CH-01, CH-05, CH-10 | book-03, CH-12 | [ ] | [Water symbolism pays off in climax] |

<!-- Foreshadowing is a promise to the reader. -->
<!-- If a setup is planted, it should pay off -- or be so subtle that its absence is unnoticed. -->
<!-- Unfulfilled obvious foreshadowing is a reader-trust violation. -->

---

## Related Documents

| Document | Purpose |
|----------|---------|
| [SERIES_ARC.md](SERIES_ARC.md) | How threads serve the series arc |
| [TIMELINE.md](TIMELINE.md) | When threads are introduced and resolved |
| [CHARACTERS.md](CHARACTERS.md) | Characters driving each thread |
| [READER_KNOWLEDGE.md](READER_KNOWLEDGE.md) | What the reader knows about each thread at book boundaries |
| [RETROACTIVE_LOG.md](RETROACTIVE_LOG.md) | If a thread change requires retroactive edits |
| Per-book CONTINUITY_BIBLE.md | Per-book thread and subplot tracking |
