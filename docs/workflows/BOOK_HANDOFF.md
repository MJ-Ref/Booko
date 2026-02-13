<!-- reviewed: 2026-02-13 -->
# Book Handoff Workflow — Transitioning Between Books in a Series

## Purpose

Transfer the accumulated state of a completed book to its successor. This
workflow ensures that nothing learned, established, or promised during book N is
lost when work begins on book N+1. The handoff is the single most failure-prone
moment in series development — the point where threads are dropped, characters
drift, and world details contradict.

## Prerequisites

- [ ] Current book has completed all editorial passes through at least
      developmental edit (Pass 2)
- [ ] Series documents exist (`series/` directory populated per the Series
      Planning workflow)
- [ ] The next book's role in the series arc is defined in `series/SERIES_ARC.md`
- [ ] Author has confirmed the next book's scope and core question

## Workflow Steps

### 1. Finalize Current Book

Ensure all editorial passes are complete for the current book before beginning
the handoff. Incomplete passes leave the book's state ambiguous — you cannot
hand off what is not yet settled.

- [ ] All chapters have reached their target editorial status
- [ ] Editorial debt register reviewed — all High-impact items resolved or
      explicitly deferred with documented reasons
- [ ] Continuity check completed (`/book-map continuity-check`)
- [ ] Quality scorecard meets the project's minimum threshold
- [ ] Author sign-off on the manuscript's current state

### 2. Freeze Continuity

Lock the continuity bible for the completed book. From this point forward,
changes to the completed book's facts require the Retroactive Change workflow.

- [ ] Copy `books/book-NN/docs/book/CONTINUITY_BIBLE.md` to a frozen snapshot
      (e.g., append `<!-- FROZEN -->` header)
- [ ] Mark the frozen copy with a header:
      `<!-- FROZEN: Book NN — changes require RETROACTIVE_CHANGE workflow -->`
- [ ] Record the freeze date and the manuscript version (commit hash or version
      number) in the frozen file

The frozen continuity bible is a contract. It says: "These are the facts as of
book N's completion. Any future book that contradicts these facts is in error
unless a Retroactive Change has been filed."

### 3. Update Series Documents

Propagate everything the current book established or changed into the series-
level documents. This is the most labor-intensive step and the most important.

**`series/CHARACTERS.md`:**
- [ ] Update each character's state to reflect their status at the end of the
      current book
- [ ] Record arc progress: where each character ended relative to their
      series-level arc
- [ ] Note any new characters introduced
- [ ] Note any characters killed, departed, or otherwise removed from play
- [ ] Update relationship matrix

**`series/WORLD.md`:**
- [ ] Add any new world facts established in the current book
- [ ] Update any world facts that changed (political shifts, destroyed
      locations, new technologies or discoveries)
- [ ] Tag every addition or change with book and chapter reference

**`series/TIMELINE.md`:**
- [ ] Add all events from the current book
- [ ] Verify that the timeline is internally consistent with the addition of
      new events
- [ ] Add between-books entries for any time gap before the next book

**`series/THREADS.md`:**
- [ ] Update thread statuses: mark resolved threads, advance developing threads
- [ ] Add any new threads introduced in the current book
- [ ] Verify that every open thread has a planned resolution in a future book
- [ ] Flag any threads that were supposed to resolve in this book but did not

### 4. Write the Handoff Document

Create `series/handoffs/BOOK-NN-TO-MM.md`. This is the central artifact of the
workflow — a structured transfer document that an agent can read at the start of
the next book to acquire full context.

The handoff document contains:

```markdown
# Handoff: Book NN to Book MM

## Date: [date]
## Completed book: [title]
## Next book: [working title]

### Narrative State at End of Book NN
[Where the story stands. What has been resolved. What remains open. What the
reader is feeling and expecting.]

### Character States
[For each major character: physical location, emotional state, knowledge state,
relationship state, arc position. Be specific — "Elena knows about the betrayal
but has not confronted Marcus" not "Elena is upset."]

### Open Threads Carrying Forward
[List every open thread from THREADS.md with its current state and expected
role in the next book.]

### World State Changes
[What is different about the world compared to the series start? What new
rules, facts, or conditions exist?]

### Reader Expectations
[What the reader expects from the next book. What promises have been made
(explicitly or implicitly) that must be honored. What questions the reader is
most eager to have answered.]

### Continuity Hazards
[Specific details that are easy to get wrong in the next book. Names that are
similar. Timeline points that are easy to miscalculate. Character knowledge
that is easy to misattribute — "Character A does NOT know about X, even though
the reader does."]

### Tone and Energy
[What emotional register the next book should open with. If the current book
ended on a devastating loss, the next book cannot open with breezy humor
without acknowledging the loss. Describe the emotional bridge.]

### Author Notes
[Any author-specific guidance for the next book: intentions, concerns, ideas
that emerged during the current book's development.]
```

### 5. Update Reader Knowledge State

Update `series/READER_KNOWLEDGE.md` with the new book's knowledge gates.

- [ ] Move items from "Does Not Yet Know" to "Must Know" or "Should Know" as
      appropriate based on what was revealed in the current book
- [ ] Add new "Does Not Yet Know" items for information withheld for future books
- [ ] Verify that everything in "Must Know" for the next book is actually
      established in the completed book's manuscript
- [ ] Plan reintroduction strategy for "Must Know" items that the reader may have
      forgotten between books

### 6. Scaffold Next Book

Create the directory structure for the next book following the standard Book_Map
layout.

```
books/book-MM/
├── manuscript/
│   ├── _INDEX.md
│   ├── chapters/
│   ├── front_matter/
│   └── back_matter/
└── docs/
    ├── _INDEX.md
    └── book/
        ├── OVERVIEW.md              (book-specific premise and series fit)
        ├── OUTLINE.md               (chapter contracts for this book)
        └── CONTINUITY_BIBLE.md      (initialized from series state)
```

- [ ] All directories created
- [ ] Template files populated with correct headers
- [ ] `CLAUDE.md` (or entry point) updated to reference the new book's location
      and the series handoff document

### 7. Write Next Book's OVERVIEW

Create the next book's overview document. This is not the full structure spec —
it is the bridge document that explains how this book fits the series.

In `books/book-MM/docs/book/OVERVIEW.md`:

- [ ] **Book's question:** The specific question this book poses and answers
- [ ] **Book's promise:** What the reader will experience in this installment
- [ ] **Role in series arc:** How this book advances the series-level trajectory
- [ ] **Opening state:** Where the story, characters, and world begin (must
      match the handoff document's ending state)
- [ ] **Closing state:** Where the story, characters, and world should end
      (informed by the series arc)
- [ ] **Key threads:** Which open threads from previous books are advanced or
      resolved in this book, and which new threads are introduced

### 8. Write Next Book's OUTLINE

Create the outline for the new book in
`books/book-MM/docs/book/OUTLINE.md`.

For each chapter:

- [ ] Chapter thesis or purpose
- [ ] Required scenes or arguments
- [ ] Character arc beats (which characters appear, where they are in their arcs)
- [ ] Thread advancement (which threads are touched)
- [ ] Dependencies on prior chapters or books
- [ ] Pacing intention (energy level, tension level)

Cross-reference every chapter against the series arc to confirm the book
maintains its trajectory toward the series-level resolution.

### 9. Initialize Continuity Bible

Create the new book's continuity bible in
`books/book-MM/docs/book/CONTINUITY_BIBLE.md`.

- [ ] Copy all active facts from the completed book's frozen continuity bible
- [ ] Copy current character states from `series/CHARACTERS.md`
- [ ] Copy current world state from `series/WORLD.md`
- [ ] Include a "Changes from Previous Book" section highlighting what shifted
- [ ] Add a "Watch List" section for continuity hazards identified in the
      handoff document

The new continuity bible is a living document — it will be updated as the new
book is drafted and edited.

### 10. Handoff Review

The Series Continuity Editor (a specialized review role, human or agent)
reviews all handoff artifacts for completeness and consistency.

Review checklist:

- [ ] Handoff document is complete — no section is empty or marked TODO
- [ ] Series documents (`CHARACTERS.md`, `WORLD.md`, `TIMELINE.md`,
      `THREADS.md`) are current and internally consistent
- [ ] `READER_KNOWLEDGE.md` accurately reflects what the reader knows
- [ ] New book's overview is consistent with the series arc
- [ ] New book's outline references the correct character states and thread
      positions
- [ ] New continuity bible matches the series documents
- [ ] No open threads are unaccounted for — every thread is either resolved,
      planned for a future book, or deliberately abandoned with documented reason
- [ ] The emotional bridge between books is coherent — the new book opens in a
      register that respects where the previous book ended

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Frozen continuity bible | `books/book-NN/docs/book/CONTINUITY_BIBLE.md` | Frozen |
| Handoff document | `series/handoffs/BOOK-NN-TO-MM.md` | Current |
| Updated series characters | `series/CHARACTERS.md` | Current |
| Updated series world | `series/WORLD.md` | Current |
| Updated series timeline | `series/TIMELINE.md` | Current |
| Updated series threads | `series/THREADS.md` | Current |
| Updated reader knowledge | `series/READER_KNOWLEDGE.md` | Current |
| Next book scaffold | `books/book-MM/` | Scaffolded |
| Next book overview | `books/book-MM/docs/book/OVERVIEW.md` | Current |
| Next book outline | `books/book-MM/docs/book/OUTLINE.md` | Current |
| Next book continuity bible | `books/book-MM/docs/book/CONTINUITY_BIBLE.md` | Initialized |

## Acceptance Criteria

- [ ] All series documents updated and internally consistent
- [ ] Handoff document is complete with all sections populated
- [ ] Current book's continuity bible is frozen with correct metadata
- [ ] Next book is scaffolded with all required directories and templates
- [ ] Next book's overview and outline exist and reference correct series state
- [ ] New continuity bible is initialized from current series state
- [ ] Series Continuity Editor has reviewed and approved all artifacts
- [ ] No open thread is unaccounted for
- [ ] Validation scripts pass:

```bash
scripts/check-series-continuity.sh
scripts/check-thread-resolution.sh
```
