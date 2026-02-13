<!-- reviewed: 2026-02-13 -->
# Retroactive Change Workflow — Modifying Earlier Books

## Purpose

Handle discoveries in book N that require changes to book N-1 (or earlier).
Retroactive changes are the most dangerous operations in series development.
A change to an earlier book can cascade forward through every subsequent book,
every series document, and every reader expectation. This workflow enforces
the discipline needed to make retroactive changes safely.

## Prerequisites

- [ ] The earlier book's continuity bible is frozen (per Book Handoff workflow)
- [ ] Series documents are current (`series/` directory up to date)
- [ ] The change is identified and its necessity is understood — do not begin
      this workflow on a hunch; begin it on evidence

## Workflow Steps

### 1. Identify the Need

Document precisely why a change to an earlier book is needed. Write a brief
statement in the following format:

```
During work on [Book MM], the following issue was discovered:

[Specific description of the problem]

This requires a change to [Book NN] because:

[Why the problem cannot be resolved within Book MM alone]
```

Common triggers:
- A plot development in the current book contradicts an established fact
- A character's behavior in the current book requires backstory that was not
  planted in the earlier book
- A world rule established earlier makes a planned event impossible
- A timeline error makes the current narrative implausible
- A thematic thread needs earlier setup to pay off properly

### 2. Impact Assessment

Before proposing a solution, map the full scope of the problem. This step
prevents the common failure of fixing one thing and breaking three others.

**Identify all affected artifacts:**

- [ ] Which books are affected? (Not just the target book — any book between the
      target and the current book)
- [ ] Which chapters within each affected book?
- [ ] Which characters are affected? (Check `series/CHARACTERS.md`)
- [ ] Which threads are affected? (Check `series/THREADS.md`)
- [ ] Which world facts are affected? (Check `series/WORLD.md`)
- [ ] Which timeline entries are affected? (Check `series/TIMELINE.md`)
- [ ] What does the reader know at each relevant point?
      (Check `series/READER_KNOWLEDGE.md`)

**Map the ripple effects:**

For each affected artifact, trace the consequences forward. If you change a
fact in book 1, chapter 5, ask:
- Does anything in book 1, chapters 6-end depend on the original fact?
- Does anything in book 2 depend on the original fact?
- Does the reader's understanding at any knowledge gate depend on the
  original fact?
- Do any resolved or developing threads depend on the original fact?

Document this analysis. It is the basis for the EDR in the next step.

### 3. File an EDR

Retroactive changes are significant editorial decisions. They require a formal
editorial decision record in `docs/decisions/EDR/`.

The EDR must include:

```markdown
# EDR: Retroactive Change — [Brief Title]

## Date: [date]
## Status: Proposed / Approved / Implemented / Rejected

## The Problem
[From step 1 — why the change is needed]

## Impact Assessment
[From step 2 — full scope of affected artifacts]

## Proposed Change
[Exactly what will be changed, in which file, in which book]

## Alternatives Considered
[Other ways to resolve the issue that do not require retroactive changes]
- Alternative 1: [description] — rejected because [reason]
- Alternative 2: [description] — rejected because [reason]

## Risk Assessment
- Severity: Minor / Moderate / Major
- Books affected: [list]
- Publication status of affected books: [Draft / In Editing / Published]
- Estimated effort: [hours/sessions]

## Decision
[Author's decision: proceed, reject, or modify the proposal]
```

**Always consider alternatives to retroactive changes.** Many apparent
retroactive needs can be resolved within the current book:
- Ret-explain: Add a line in the current book that recontextualizes (not
  contradicts) the earlier fact
- Unreliable narrator: The earlier account was the character's understanding,
  which was incomplete
- Time-gap development: Something changed between books that accounts for the
  discrepancy
- Lampshade: Acknowledge the apparent contradiction and make it part of the
  story

Only proceed to step 4 if the author approves the EDR.

### 4. Evaluate Severity

Classify the change to determine the appropriate level of rigor.

**Minor changes** (typo correction, small detail adjustment, clarifying a vague
passage):
- Affect no plot points, character arcs, or world rules
- Do not change what the reader understands
- Can be made with a brief log entry and minimal forward-propagation checking
- Examples: correcting a character's eye color, fixing a street name, adjusting
  a minor date

**Moderate changes** (scene adjustments, dialogue modifications, adding or
removing a minor scene):
- Affect one or two threads or character details but not the overall arc
- May change minor elements of what the reader knows
- Require checking all chapters in the affected book after the change point and
  spot-checking subsequent books
- Examples: adding a scene to plant a clue, modifying a conversation to
  establish a relationship detail, adjusting a character's stated motivation

**Major changes** (plot point alterations, character trait changes, world rule
modifications):
- Affect multiple threads, character arcs, or world rules
- Change significant elements of reader knowledge
- Require full forward-propagation checking through every subsequent book
- Require updating multiple series documents
- Examples: changing a character's backstory, modifying a world rule, altering
  a key plot event, changing who was present at a critical scene

### 5. Update the Retroactive Log

Log the change in `series/RETROACTIVE_LOG.md` *before* making the change. The
log is the audit trail for all retroactive modifications.

```markdown
## Change [NNN]: [Brief Title]

- Date: [date]
- EDR: `docs/decisions/EDR/[filename]`
- Severity: Minor / Moderate / Major
- Target: Book NN, Chapter MM, [specific location]
- Reason: [one-sentence summary]
- Change description: [what was changed — old value and new value]
- Books affected: [list of all books that required changes]
- Status: Planned / In Progress / Complete / Validated
```

The log serves two purposes:
1. **Accountability:** Every change to a completed book is recorded. There are
   no silent modifications.
2. **Debugging:** If a continuity error is discovered later, the retroactive log
   can reveal whether a previous change introduced it.

### 6. Make the Changes

Edit the affected files in the earlier book. Follow these rules:

- [ ] Change only what the EDR specifies — no opportunistic edits while the file
      is open
- [ ] Add a comment at each change point: `<!-- RETROACTIVE: Change NNN -->`
- [ ] If the change is in a frozen continuity bible, update the frozen file and
      add a note: `<!-- UPDATED: [date] per Retroactive Change NNN -->`
- [ ] Preserve the overall chapter structure and flow — the change should be
      invisible to a reader who does not know it was made

### 7. Propagate Forward

Check all subsequent books for ripple effects. The depth of this check depends
on the severity level from step 4.

**For minor changes:**
- [ ] Search the affected book (after the change point) for references to the
      changed detail
- [ ] Spot-check the next book for references

**For moderate changes:**
- [ ] Read all chapters after the change point in the affected book
- [ ] Search all subsequent books for references to the changed element
- [ ] Check `series/READER_KNOWLEDGE.md` for affected knowledge gates
- [ ] Check `series/THREADS.md` for affected threads

**For major changes:**
- [ ] Read all chapters after the change point in the affected book
- [ ] Read all chapters in all subsequent books that reference the changed
      element, its characters, or its consequences
- [ ] Re-verify `series/CHARACTERS.md` for the affected characters
- [ ] Re-verify `series/TIMELINE.md` for the affected time period
- [ ] Re-verify `series/WORLD.md` for any affected world facts
- [ ] Re-verify `series/READER_KNOWLEDGE.md` for all affected knowledge gates
- [ ] Re-verify `series/THREADS.md` for all affected threads
- [ ] Update all affected handoff documents in `series/handoffs/`

### 8. Re-validate

Run validation scripts to check for inconsistencies introduced by the change.

```bash
scripts/check-series-continuity.sh
scripts/check-thread-resolution.sh
```

Additionally:
- [ ] Read the changed passage in context (surrounding chapters) to verify it
      reads naturally
- [ ] Verify that no new continuity errors were introduced by the change or by
      the forward propagation
- [ ] Confirm that the original problem (step 1) is resolved

### 9. Update Series Documents

Ensure all series-level documents reflect the change.

- [ ] `series/CHARACTERS.md` — update if any character details changed
- [ ] `series/WORLD.md` — update if any world facts changed
- [ ] `series/TIMELINE.md` — update if any events or dates changed
- [ ] `series/THREADS.md` — update if any thread states changed
- [ ] `series/READER_KNOWLEDGE.md` — update if reader knowledge gates changed
- [ ] `series/RETROACTIVE_LOG.md` — update status to Complete
- [ ] EDR status — update to Implemented

## Guidance: When Retcons Are Acceptable

### Before Publication (Low Risk)

Changes to unpublished manuscripts are relatively safe. The reader has not yet
encountered the original version. The primary risks are:

- Introducing new continuity errors through incomplete propagation
- Consuming time that could be spent on forward progress
- Creating a habit of retroactive changes that delays completion

**Acceptable when:** The change clearly improves the series and the impact
assessment shows manageable scope.

### During Editing (Moderate Risk)

Changes during the editing phase are more costly. The manuscript has been through
editorial passes that must be partially re-run. Other people (editors, beta
readers) may have given feedback based on the original version.

**Acceptable when:** The change fixes a significant problem that would damage
reader experience. Minor issues should be noted for a future edition rather than
addressed retroactively.

### After Publication (High Risk)

Changes to published books are extremely risky and should be rare.

- Readers who own the original version will have a different experience than new
  readers
- Reviews, discussions, and reader expectations are based on the published text
- Changes may introduce inconsistencies with reader memory
- Some distribution channels make updates difficult or impossible

**Acceptable when:** The change fixes a factual error, legal issue, or a
continuity problem so severe that it undermines the reading experience of
subsequent books. Changes for stylistic preference or minor improvements are
not acceptable after publication.

### The "Butterfly Effect" Problem

Small changes propagate in unexpected ways. A character who arrives in a city
on Tuesday instead of Wednesday may now overlap with an event that was
happening on Tuesday, which means they witness something they were not supposed
to know about, which changes their behavior in the next scene, which changes
their dialogue in a later chapter, which changes another character's response.

The impact assessment (step 2) is the defense against the butterfly effect.
But even careful assessment can miss indirect consequences. This is why the
re-validation step (step 8) exists, and why major changes require reading
affected chapters in full rather than just searching for keyword references.

**When in doubt, do not make the retroactive change.** Find a way to resolve
the issue in the current book. Retroactive changes are always more expensive
than they appear.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| EDR | `docs/decisions/EDR/` | Implemented |
| Retroactive log entry | `series/RETROACTIVE_LOG.md` | Complete |
| Modified earlier book | `books/book-NN/manuscript/` | Updated |
| Updated continuity bible | `books/book-NN/CONTINUITY_BIBLE.md` | Updated |
| Updated series characters | `series/CHARACTERS.md` | Current |
| Updated series world | `series/WORLD.md` | Current |
| Updated series timeline | `series/TIMELINE.md` | Current |
| Updated series threads | `series/THREADS.md` | Current |
| Updated reader knowledge | `series/READER_KNOWLEDGE.md` | Current |

## Acceptance Criteria

- [ ] EDR exists, is approved, and documents the full rationale
- [ ] Retroactive log entry is complete with old and new values
- [ ] Changes are limited to what the EDR specifies
- [ ] All change points are marked with `<!-- RETROACTIVE: Change NNN -->`
- [ ] Forward propagation is complete for the appropriate severity level
- [ ] Validation scripts pass
- [ ] Changed passage reads naturally in context
- [ ] All series documents are updated and internally consistent
- [ ] No new continuity errors introduced
- [ ] Original problem is resolved
