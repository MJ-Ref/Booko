<!-- reviewed: 2026-02-13 -->
# Copy Edit Workflow — Pass 4: Grammar, Consistency & Formatting

## Purpose

Ensure mechanical correctness: grammar, punctuation, spelling, formatting
conventions, and cross-reference accuracy. After this pass the manuscript
should be free of surface errors.

## Prerequisites

- [ ] Chapter has status **Line-Edited** (Pass 3 complete)
- [ ] Style sheet (`docs/style/STYLE_SHEET.md`) open for reference
- [ ] Glossary (`docs/reference/GLOSSARY.md`) open for reference
- [ ] Continuity bible (`docs/reference/CONTINUITY_BIBLE.md`) open for reference
- [ ] Any terminology-related EDRs reviewed

## Workflow Steps

1. **Check grammar and punctuation.** Read every sentence for subject-verb
   agreement, tense consistency, pronoun clarity, comma usage, and
   hyphenation. Apply the rules in the style sheet when a choice is ambiguous.

2. **Check style sheet compliance.** Verify that every term in the style sheet
   is used in its prescribed form. Watch for:
   - Capitalization inconsistencies
   - Hyphenation drift (e.g., "e-mail" vs. "email")
   - Number formatting (spelled out vs. numeral)
   - Dialogue punctuation (regional convention)

3. **Check formatting.** Confirm that headings, block quotes, lists, emphasis
   marks, and code blocks follow the manuscript's formatting conventions.
   Normalize any deviations.

4. **Check continuity.** Cross-reference character details, dates, place names,
   and factual claims against the continuity bible. Flag contradictions with
   `<!-- CONTINUITY: ... -->`.

5. **Check cross-references.** Verify that every internal reference ("as we
   discussed in Chapter 3") points to the correct chapter and that the
   referenced content actually exists.

6. **Normalize formatting.** Ensure consistent use of em-dashes, ellipses,
   smart quotes, scene breaks, and whitespace throughout.

## Forbidden

- **Changing meaning.** Do not rewrite sentences to alter what they say. If a
  factual or logical error is found, flag it in the editorial debt register
  and return the chapter to the appropriate earlier pass.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Copy-edited chapter | `books/book-NN/manuscript/chapters/CH-NN.md` | Status: Copy-Edited |
| Style sheet updates | `docs/style/STYLE_SHEET.md` | Updated if new terms found |
| Continuity flags | `docs/reference/CONTINUITY_BIBLE.md` | Updated if issues found |
| Editorial debt items | `docs/quality/EDITORIAL_DEBT_REGISTER.md` | Logged |

## Acceptance Criteria

- [ ] Zero grammar or punctuation errors
- [ ] All terms match the style sheet
- [ ] Formatting is consistent across the chapter
- [ ] Continuity checked — no unresolved `<!-- CONTINUITY: ... -->` tags
- [ ] Cross-references verified and correct
- [ ] Chapter metadata status updated to `Copy-Edited`
