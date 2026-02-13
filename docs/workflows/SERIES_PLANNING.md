<!-- reviewed: 2026-02-13 -->
# Series Planning Workflow — Multi-Book Arc Design

## Purpose

Plan the arc, boundaries, and shared state for a multi-book series. This
workflow produces the `series/` directory — the persistent memory that survives
across books and agent sessions. Every series document created here will be
consumed by the Book Handoff and Retroactive Change workflows.

## Prerequisites

- [ ] Book type and genre established (`docs/structure-spec.md`)
- [ ] Voice spec drafted (`docs/voice-spec.md`) — the series voice anchors all books
- [ ] Author has a working sense of the series scope: number of books (firm or
      approximate), overarching theme, and the central question the series answers
- [ ] Single-book Book_Map structure already scaffolded for book 1

## Workflow Steps

### 1. Define the Series Premise

Write `series/SERIES_OVERVIEW.md`. This document answers the questions a reader
would see on the back cover of the box set:

- **Series title and working subtitle**
- **Series question:** The overarching question the series explores. Not every
  book answers it fully — but every book advances the reader's understanding.
- **Series promise:** What experience the reader is signing up for across the
  full commitment. This is distinct from any individual book's promise.
- **Book promise vs. series promise:** Explicitly articulate the tension. The
  series promises an epic journey; each book promises a satisfying stop along
  the way. Neither promise may be broken.
- **Planned book count:** Firm number or range. If the series is open-ended,
  document the conditions under which it would end.
- **Reading order:** Sequential (each book requires the previous) or standalone
  (each book is a complete experience with shared world/characters). Hybrid
  approaches must be documented explicitly — which books require which
  predecessors.
- **Target audience:** Same as individual books, but note any expected audience
  evolution across the series (e.g., a YA series where the protagonist ages and
  the audience matures with them).

### 2. Design the Series Arc

Map the macro structure in `series/SERIES_ARC.md`. The series arc is the
trajectory from the first page of book 1 to the last page of the final book.

- **Opening state:** Where the world, protagonist, and central conflict begin.
- **Escalation pattern:** How stakes, complexity, and tension increase across
  books. Avoid linear escalation — plan peaks and valleys.
- **Midpoint shift:** The series-level midpoint where the reader's understanding
  of the central question fundamentally changes. This is often the end of the
  middle book or the midpoint of the series.
- **Crisis:** The moment of maximum tension at the series level.
- **Resolution:** How the series question is answered. What state the world and
  characters reach.

For each book, document its role in the series arc:

```
Book 1: [Role] — Introduces the world and central question. Establishes stakes.
Book 2: [Role] — Deepens the conflict. Reveals the true scope of the problem.
Book 3: [Role] — Confronts the central question directly. Resolves.
```

**Inter-book pacing.** Plan the emotional and narrative rhythm across books, not
just within them. Two high-intensity books in a row exhaust the reader. A slow
book following a slow book kills the series. Map the energy profile:

```
Book 1: Rising — discovery and possibility
Book 2: Descent — complication and cost
Book 3: Eruption — crisis and resolution
```

### 3. Plan Book Boundaries

Decide what each book covers. This is where series planning most commonly fails.
The question is not "what happens in book 2" but "why is book 2 a *book* and not
just the next batch of chapters?"

For each book, define:

- [ ] **Its own arc:** Every book must have a beginning, middle, and end that
      works independently. A book that is "just the middle" of the series is not
      a book — it is the second third of a manuscript sold in three pieces.
- [ ] **Its own question:** A subset of the series question that this book poses
      and answers. The reader finishes the book satisfied, even though the larger
      question remains.
- [ ] **Entry and exit state:** Where the reader's knowledge, emotional state,
      and expectations begin and end.
- [ ] **The handoff hook:** What propels the reader from this book to the next.
      Not a cliffhanger (though it can be) — a question that the reader now
      *needs* answered.

**The sagging middle book problem.** In a trilogy, book 2 is the most dangerous.
It inherits the setup from book 1 and must deliver it to book 3, which gets the
climax. Without deliberate planning, book 2 becomes a bridge — functional but
forgettable. Countermeasures:

- Give book 2 its own internal antagonist, revelation, or reversal that is
  independent of the series arc.
- Make book 2's question the most personally meaningful to the protagonist.
- Plan book 2's climax to be the series' emotional midpoint — the lowest point,
  the biggest betrayal, the revelation that reframes everything.

### 4. Establish the World

Build the shared world in `series/WORLD.md`. This document holds all world-level
facts that persist across books: geography, political systems, magic systems,
technology, social structures, organizations, history.

Structure `series/WORLD.md` by category, not by book. Facts are tagged with the
book in which they are introduced:

```
## Geography

### The Northern Provinces
- Capital: Ashenmere [introduced: Book 1, Ch 3]
- Climate: Subarctic tundra transitioning to boreal forest [Book 1, Ch 3]
- Governance: Provincial council, nominally under Crown authority [Book 1, Ch 7]
- Key change: Council dissolves after the Siege [Book 2, Ch 14]
```

Include a **World Rules** section for constraints that must never be violated:
physics of magic systems, technological limitations, social laws that drive
plot. These rules are the equivalent of a software API contract — changing them
has cascading consequences.

### 5. Map Character Arcs Across Books

Populate `series/CHARACTERS.md`. This extends the single-book character spec
(Chapter 6) to track arcs across the full series.

For each major character:

- **Series-level arc:** Who they are at the start of book 1 vs. the end of the
  final book. The full trajectory.
- **Per-book arc:** How each book advances their character. What they learn,
  lose, or become in each installment.
- **Continuity markers:** Physical description, speech patterns, relationships,
  knowledge state, and emotional state — *per book*. Tag each with the book and
  chapter where it changes.
- **Relationship evolution:** How key relationships change across books. A
  relationship matrix (Character A x Character B) with state per book.

### 6. Create the Master Timeline

Populate `series/TIMELINE.md`. The master timeline tracks events across the
full series in chronological order (even if the narrative order differs).

```
| Event | Story Date | Book | Chapter | Notes |
|-------|-----------|------|---------|-------|
| Founding of the Order | 300 years before Book 1 | Backstory | — | Referenced in Book 1 Ch 2 |
| Anna arrives in Ashenmere | Year 1, Spring | Book 1 | Ch 1 | Series opening |
| The Siege of Ashenmere | Year 1, Autumn | Book 2 | Ch 14 | Series midpoint |
```

Include:
- [ ] A **Between Books** section for events that occur in the gaps between books
- [ ] Character ages at key points
- [ ] Season and weather tracking if relevant
- [ ] Travel times between locations (to prevent impossibilities)

### 7. Seed Plot Threads

Identify series-spanning threads in `series/THREADS.md`. A thread is a narrative
element introduced in one book that must be resolved in a later book.

For each thread:

```
## Thread: [Name]

- Introduced: Book N, Chapter M
- Type: Plot / Character / Mystery / Thematic / World
- Setup: [What the reader sees when the thread is introduced]
- Promise: [What the reader expects to happen — the implicit contract]
- Planned resolution: Book N, Chapter M
- Status: Open / Developing / Resolved / Abandoned (with reason)
- Dependencies: [Other threads this depends on or enables]
```

**Thread discipline.** Every thread introduced is a promise to the reader. Track
every promise. Resolve every promise, or abandon it deliberately (not by
forgetting). The thread document is the enforcement mechanism.

**Thread categories:**

- **Must-resolve:** Plot threads that the reader will notice if dropped.
- **Should-resolve:** Character and thematic threads that enrich the series.
- **Optional:** Easter eggs, minor callbacks, world-building details.

### 8. Define Reader Knowledge Gates

Document what readers must know at each book boundary. Create
`series/READER_KNOWLEDGE.md` with a per-book section:

```
## After Book 1, the Reader Knows:

### Must Know (required for Book 2 to make sense)
- The world operates under [rule]
- Character A is [state]
- The central conflict is [description]

### Should Know (enriches Book 2 but is not strictly required)
- The history of [event]
- Character B's hidden motivation

### Does Not Yet Know (deliberately withheld for future revelation)
- The true identity of [character]
- The connection between [event A] and [event B]
```

This document prevents two common failures:

1. **Under-explaining:** Assuming the reader remembers details from a book they
   read a year ago. If a detail is in "Must Know" and will be referenced in the
   next book, plan a brief, natural reintroduction.
2. **Over-explaining:** Re-establishing facts the reader just learned. If the
   reader finished book 1 last week, restating its entire premise in book 2's
   opening is patronizing.

### 9. Review and Validate

Cross-check all series documents for internal consistency before beginning
book 1 (or before beginning the next book, if the series is in progress).

- [ ] `SERIES_ARC.md` aligns with `SERIES_OVERVIEW.md` — every book's role
      matches the series premise and promise
- [ ] `CHARACTERS.md` arcs are consistent with `SERIES_ARC.md` — character
      changes correspond to plot events
- [ ] `TIMELINE.md` contains no impossibilities — travel times, character ages,
      and event sequences are physically plausible
- [ ] `THREADS.md` has no orphaned threads — every open thread has a planned
      resolution book and chapter
- [ ] `WORLD.md` rules are internally consistent — no rule contradicts another
- [ ] `READER_KNOWLEDGE.md` gates align with actual book content
- [ ] Every book has its own arc that works independently of the series arc
- [ ] The series promise and each book promise are compatible

Run validation scripts if available:

```bash
scripts/check-series-continuity.sh
scripts/check-thread-resolution.sh
```

## Guidance: Recurring Planning Considerations

### Sequential vs. Standalone Reading Order

The reading-order decision affects every other planning choice:

- **Sequential series** can build on accumulated reader knowledge. Each book can
  assume full understanding of all previous books. This enables deeper world-
  building and more complex arcs, but requires careful recapping for readers
  who wait between books.
- **Standalone series** must include enough context in each book for a new reader
  to follow. This limits complexity but broadens the entry point. Each book must
  work as a door into the series, not just a continuation.
- **Hybrid series** (e.g., standalone novels in a shared universe with a
  recommended reading order) require the most careful planning. Document which
  knowledge is "shared universe" (common to all) vs. "book-specific" (only
  available to readers of that book).

### The "Series Promise" vs. "Book Promise" Tension

The series promises transformation: by the final book, the world, characters, or
understanding will be fundamentally different. Each book promises satisfaction: by
the final page, something meaningful will have been resolved.

These promises are in tension. Resolving too much in one book undercuts the
series arc. Resolving too little undercuts the book's standalone quality.

The resolution: each book resolves its *own* question while deepening the
*series* question. The reader closes the book satisfied about what was answered
and hungry about what remains open.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Series overview | `series/SERIES_OVERVIEW.md` | Current |
| Series arc | `series/SERIES_ARC.md` | Current |
| World document | `series/WORLD.md` | Current |
| Character tracking | `series/CHARACTERS.md` | Current |
| Master timeline | `series/TIMELINE.md` | Current |
| Thread register | `series/THREADS.md` | Current |
| Reader knowledge gates | `series/READER_KNOWLEDGE.md` | Current |

## Acceptance Criteria

- [ ] All seven `series/` documents exist and are populated
- [ ] Every book has a defined arc, question, and handoff hook
- [ ] No orphaned threads — every thread has a planned resolution
- [ ] Timeline contains no impossibilities
- [ ] World rules are internally consistent
- [ ] Series promise and book promises are explicitly stated and compatible
- [ ] Reading order is documented and its implications are addressed
- [ ] Validation scripts pass (if available)
