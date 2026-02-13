<!-- reviewed: 2026-02-13 -->
# Revision Workflow — Pass 2: Developmental Edit

## Purpose

Evaluate and strengthen structure, pacing, argument flow, and narrative
coherence. This pass looks at the chapter as a unit within the whole manuscript
— not at individual sentences.

## Prerequisites

- [ ] Chapter has status **Draft** (Pass 1 complete)
- [ ] Outline contract available for the chapter and its neighbors
- [ ] Pacing expectations documented (target word count ranges, beat sheet, or
      argument map)
- [ ] Any open EDRs related to this chapter reviewed

## Workflow Steps

1. **Evaluate chapter structure.** Does the chapter have a clear opening hook,
   a coherent middle, and a satisfying close or cliffhanger? Does each section
   earn its place?

2. **Check outline compliance.** Compare the draft against the outline contract
   point by point. Flag missing beats, undelivered promises, or scope creep.

3. **Assess pacing.** Is the chapter the right length relative to its
   importance? Are there sections that drag or feel rushed? Mark passages with
   `<!-- PACING: too slow -->` or `<!-- PACING: too fast -->`.

4. **Verify arc or argument progression.** For fiction: does the character arc
   advance? For nonfiction: does the argument build logically from the previous
   chapter and set up the next?

5. **Rewrite for structural clarity.** Move, merge, or split sections as
   needed. Rewrite transitions between sections. Delete material that does not
   serve the chapter's purpose.

6. **Update outline if structure changed.** If you moved, added, or removed
   sections, update the outline contract to match. File an EDR for any change
   that affects other chapters.

## Forbidden

- **Micro-line edits.** Do not fix comma splices or hunt for adverbs. That is
  Pass 3 and Pass 4 work — unless a sentence-level issue actively blocks
  structural clarity.
- **Rewriting voice.** If voice problems are widespread, log them to the
  editorial debt register and address them in the line-edit pass.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Revised chapter | `manuscript/ch-NN.md` | Status: Dev-Edited |
| Updated outline (if changed) | `docs/outline/OUTLINE_CONTRACT.md` | Current |
| EDRs for structural changes | `docs/decisions/EDR/` | Status: Proposed |
| Editorial debt items | `docs/quality/EDITORIAL_DEBT_REGISTER.md` | Logged |

## Acceptance Criteria

- [ ] Every outline contract point is present and properly developed
- [ ] Chapter pacing fits within target word-count range (within 15%)
- [ ] No orphaned subplots or dangling arguments — each is continued, resolved,
      or explicitly deferred
- [ ] Transitions between sections are coherent
- [ ] Outline contract is updated if any structural changes were made
- [ ] Chapter metadata status updated to `Dev-Edited`
- [ ] EDR filed for every change that affects chapters outside this one
