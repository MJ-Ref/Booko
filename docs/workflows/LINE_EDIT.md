<!-- reviewed: 2026-02-13 -->
# Line Edit Workflow — Pass 3: Sentence-Level Clarity & Voice

## Purpose

Refine every sentence for clarity, rhythm, and voice consistency. After this
pass the prose should sound like it was written by a single author with a
deliberate style.

## Prerequisites

- [ ] Chapter has status **Dev-Edited** (Pass 2 complete)
- [ ] Voice guide (`docs/voice/VOICE_GUIDE.md`) open for reference
- [ ] Style sheet (`docs/style/STYLE_SHEET.md`) open for reference
- [ ] Any voice-related EDRs reviewed

## Workflow Steps

1. **Re-read the voice guide.** Refresh on target register, sentence length
   ranges, forbidden constructions, and preferred rhetorical devices.

2. **Read the chapter "aloud" mentally.** Go paragraph by paragraph. Listen
   for rhythm breaks, awkward phrasing, and tonal shifts. Mark problem spots
   before fixing them.

3. **Check sentence rhythm and variety.** Flag runs of same-length sentences.
   Vary structure: short declarative, compound, periodic, fragment (if voice
   allows). Avoid three or more sentences in a row starting with the same word.

4. **Verify voice consistency.** Compare register, diction, and tone against
   the voice guide. Flag any passage that sounds like a different author. Pay
   special attention to:
   - Formality level (contractions, jargon, slang)
   - Metaphor density and type
   - Narrative distance (close vs. distant)

5. **Tighten prose.** Remove filler words, redundant qualifiers, and weak
   constructions. Prefer active voice unless passive is a deliberate style
   choice. Cut sentences that repeat what the previous sentence already said.

6. **Check transitions.** Ensure each paragraph flows into the next. Verify
   that section breaks feel intentional, not abrupt.

## Forbidden

- **Structural reordering.** Do not move sections or paragraphs between
  sections unless the change is trivially small (swapping two adjacent
  sentences within a paragraph). For anything larger, file an EDR and return
  the chapter to the dev-edit pass.
- **Adding new content.** If something is missing, log it in the editorial
  debt register rather than drafting new material at this stage.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Line-edited chapter | `manuscript/ch-NN.md` | Status: Line-Edited |
| Style sheet updates | `docs/style/STYLE_SHEET.md` | Updated if recurring issues found |
| Editorial debt items | `docs/quality/EDITORIAL_DEBT_REGISTER.md` | Logged |

## Acceptance Criteria

- [ ] Every sentence reads clearly on first pass
- [ ] Voice is consistent with the voice guide throughout — no tonal drift
- [ ] No runs of three or more same-structure sentences
- [ ] Filler words and redundancies removed
- [ ] Transitions between paragraphs and sections are smooth
- [ ] Style sheet updated with any new recurring decisions
- [ ] Chapter metadata status updated to `Line-Edited`
- [ ] No structural changes made without an EDR
