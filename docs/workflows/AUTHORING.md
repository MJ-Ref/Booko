<!-- reviewed: 2026-02-13 -->
# Authoring Workflow — Pass 1: Drafting

## Purpose

Get ideas down on the page while obeying the outline contract. Speed and
completeness matter more than polish. Every chapter must exist in rough form
before any revision pass begins.

## Prerequisites

Read these documents before starting a drafting session:

- [ ] **Voice guide** (`docs/book/VOICE_GUIDE.md`) — internalize tone and register
- [ ] **Outline contract** (`books/book-NN/docs/book/OUTLINE.md`) — know what the chapter must deliver
- [ ] **Style sheet** (`docs/book/STYLE_SHEET.md`) — avoid known terminology drift
- [ ] **Last chapter** — read the final 500-1000 words for continuity and momentum
- [ ] **Session handoff** (`docs/session/SESSION_HANDOFF.md`) — pick up where the last session stopped

## Workflow Steps

1. **Read session handoff.** Note open threads, pending decisions, and the
   target chapter for this session.

2. **Open outline contract for the target chapter.** Confirm the chapter's
   thesis, required scenes or arguments, and any dependencies on prior chapters.

3. **Review voice guide and style sheet.** Refresh on voice rules, forbidden
   constructions, and preferred terminology.

4. **Read the last 500-1000 words of the preceding chapter.** Match tone,
   check for dangling threads that this chapter must pick up, and ensure
   continuity of setting or argument.

5. **Draft the chapter following the outline contract.** Focus on content, not
   polish. Write forward. Mark uncertain passages with `<!-- TODO: ... -->`
   rather than stopping to research.

6. **Add or update the chapter metadata header.** Every chapter file must begin
   with HTML comment metadata tags including at minimum: `status` (Draft),
   `updated`, and `outline_ref`. Example:
   ```
   <!-- status: Draft -->
   <!-- updated: YYYY-MM-DD -->
   <!-- outline_ref: books/book-NN/docs/book/OUTLINE.md#ch-xx -->
   ```

7. **Update the book's `manuscript/_INDEX.md`.** Add the new chapter entry with its file
   path and status (e.g., `books/book-01/manuscript/_INDEX.md`).

8. **Update session handoff.** Record what was accomplished, open threads for
   the next session, and any emerging editorial debt.

## Forbidden During Drafting

- **Polishing prose.** Do not rewrite sentences for style. That is Pass 3.
- **Fact-check deep dives.** Tag claims with `<!-- CLAIM: ... -->` and move on.
- **Major structural changes.** If the outline feels wrong, file an EDR
  (`docs/decisions/EDR/`) and continue drafting the current plan.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Chapter draft | `books/book-NN/manuscript/chapters/CH-NN.md` | Status: Draft |
| Updated index | `books/book-NN/manuscript/_INDEX.md` | Current |
| Session handoff | `docs/session/SESSION_HANDOFF.md` | Current |
| EDRs (if any) | `docs/decisions/EDR/` | Status: Draft |
| Editorial debt items | `docs/quality/EDITORIAL_DEBT_REGISTER.md` | Logged |

## Acceptance Criteria

- [ ] Chapter file exists with correct metadata header
- [ ] All outline contract points for this chapter are addressed (even if rough)
- [ ] No untagged claims — every uncertain fact uses `<!-- CLAIM: ... -->`
- [ ] The book's `manuscript/_INDEX.md` reflects the new chapter
- [ ] Session handoff is current
- [ ] No style or structural changes made without an EDR

## Quality Check

Run the metadata validation script after drafting:

```bash
scripts/check-manuscript-metadata.sh
```

Fix any reported errors before closing the session.
