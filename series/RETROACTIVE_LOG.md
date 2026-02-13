# Retroactive Continuity Log

<!-- reviewed: 2026-02-13 -->

> When writing book N, you sometimes discover something that requires changing book N-1.
> This file tracks those retroactive changes, their justification, and their resolution.
>
> **Every retroactive change must be logged here, even if it seems minor.**
> **Unlogged retcons are the most dangerous kind -- they create invisible inconsistencies.**

---

## Purpose

Series are not written in a single pass. As later books develop, earlier books may need adjustments to maintain consistency, improve foreshadowing, or correct errors that only become visible in hindsight.

This log serves three functions:

1. **Tracking.** Every retroactive change is recorded so nothing falls through the cracks.
2. **Justification.** Each change includes a reason, preventing casual retcons that erode series integrity.
3. **Coordination.** Changes that affect multiple files are tracked to ensure all affected documents are updated.

---

## Retroactive Change Log

| ID | Date | Change Description | Reason | Affected Books | Affected Files | Status | EDR Reference |
|----|------|--------------------|--------|----------------|----------------|--------|---------------|
| RET-001 | [YYYY-MM-DD] | [e.g., "Character B's eye color changed from blue to green"] | [e.g., "Green eyes needed for symbolism in book-02 dream sequence"] | book-01 | book-01: CH-03, CH-07; series/CHARACTERS.md | [Pending / Applied / Rejected] | [EDR-XXX or "N/A -- minor detail"] |
| RET-002 | [YYYY-MM-DD] | [e.g., "Added foreshadowing line about the eastern provinces in book-01 CH-06"] | [e.g., "Book-02 subplot requires earlier setup"] | book-01 | book-01: CH-06; series/THREADS.md, series/TIMELINE.md | [Status] | [EDR reference] |

<!-- Status values: -->
<!-- Pending -- Change identified but not yet made -->
<!-- Applied -- Change has been made in all affected files -->
<!-- Rejected -- Change was considered and deliberately not made (document why) -->

---

## Guidelines

### When Is a Retcon Acceptable?

- **Factual error correction.** A detail is objectively wrong (e.g., a date contradicts the timeline). Always acceptable.
- **Foreshadowing insertion.** Adding a subtle setup for a later payoff. Acceptable if it does not change the reader's experience of the original scene.
- **Character detail adjustment.** A minor physical or biographical detail that conflicts with a later book. Acceptable if the detail was not plot-critical.
- **World rule clarification.** A world rule was ambiguous and later books need it to be precise. Acceptable.

### When Is a Retcon Dangerous?

- **Plot-altering changes.** Changing what HAPPENED in an earlier book. Requires a Major EDR and careful review.
- **Character motivation changes.** Altering why a character did something. Can undermine the entire earlier book.
- **Removing established constraints.** If book-01 established that magic requires touch, book-02 cannot silently remove that rule. Requires EDR and potentially a narrative explanation.

### When Is It Too Late?

- **Published text.** If the affected book is already published, retroactive changes are extremely costly (errata, new editions, reader confusion). Prefer forward-fixes: acknowledge the inconsistency in a later book or work around it.
- **Final-status text.** If the affected chapters are in Final status, retroactive changes require re-running all editorial passes on the affected sections.
- **Reader-known facts.** If readers have already absorbed a fact, contradicting it without acknowledgment breaks trust.

---

## Prevention Strategies

<!-- How to minimize the need for retcons in the first place. -->

1. **Plan the series arc before drafting book-01.** The more you know about later books, the fewer retcons you will need. See [SERIES_ARC.md](SERIES_ARC.md).
2. **Leave room for ambiguity in early books.** Do not over-specify details that later books might need to adjust. Describe what you must; leave the rest open.
3. **Use the Foreshadowing Register proactively.** Plant seeds in early books for known later developments. See [THREADS.md](THREADS.md).
4. **Review series-level documents before each book's final pass.** Check CHARACTERS.md, WORLD.md, TIMELINE.md, and THREADS.md for conflicts before locking a book to Final status.
5. **Handoff documents are your defense.** Complete the book-to-book handoff process before starting each new book. See [handoffs/](handoffs/).

---

## Related Documents

| Document | Purpose |
|----------|---------|
| [SERIES_OVERVIEW.md](SERIES_OVERVIEW.md) | Series identity and scope |
| [CHARACTERS.md](CHARACTERS.md) | Character consistency rules (affected by retcons) |
| [WORLD.md](WORLD.md) | World rules (affected by retcons) |
| [TIMELINE.md](TIMELINE.md) | Timeline consistency (affected by retcons) |
| [THREADS.md](THREADS.md) | Thread tracking and foreshadowing register |
| EDR directory | Editorial Decision Records for major retcons |
