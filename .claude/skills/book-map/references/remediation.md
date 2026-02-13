# Book_Map Remediation Guide

Fixes for common audit failures.

## Missing Files

**Problem:** Required file does not exist.
**Fix:** Create the file following the template/pattern in `references/directory-spec.md`. Every new doc needs:
1. A `<!-- reviewed: YYYY-MM-DD -->` freshness tag
2. An entry in `docs/_INDEX.md` (if it is a doc)
3. Content following the established patterns in sibling files

## Missing Freshness Tags

**Problem:** Doc file lacks `<!-- reviewed: YYYY-MM-DD -->` tag.
**Fix:** Add `<!-- reviewed: YYYY-MM-DD -->` near the top of the file (after the title). Use today's date.

## Stale Docs

**Problem:** Freshness tag is older than 30 days.
**Fix:** Review the document content for accuracy. If accurate, update the date. If inaccurate, fix content AND update the date.

## Agent File Too Large

**Problem:** Entry file exceeds 150 lines (likely duplicating docs/ content).
**Fix:** Move detailed content to the appropriate doc in `docs/`. Replace with a routing link.

## Missing Manuscript Metadata

**Problem:** Chapter file lacks required metadata (status, updated, outline_ref).
**Fix:** Add the metadata header block:
```markdown
<!-- status: Draft -->
<!-- updated: YYYY-MM-DD -->
<!-- outline_ref: books/book-NN/docs/book/OUTLINE.md#ch-XX -->
```

## Outline Coverage Gap

**Problem:** Outline declares a chapter but no file exists (or vice versa).
**Fix:**
- Missing file: Create `books/book-NN/manuscript/chapters/CH-XX.md` with metadata header
- Missing outline entry: Add chapter contract to `books/book-NN/docs/book/OUTLINE.md`
- Orphan file: Either add to outline or delete the file

## Forbidden Terms in Manuscript

**Problem:** Manuscript uses terms listed as forbidden in STYLE_SHEET.md.
**Fix:** Replace with the canonical term from the style sheet. If the forbidden term is actually correct for this context, update the style sheet (requires EDR if changing an existing decision).

## TODO/TK Markers in Non-Draft Chapters

**Problem:** Chapters past Draft status still contain TODO, TK, or citation-needed markers.
**Fix:** Resolve each marker before advancing the chapter's editorial status. If unresolvable, add to EDITORIAL_DEBT_REGISTER.md and set a target pass.

## Missing Series Documents

**Problem:** series/ files missing or incomplete.
**Fix:** Create the missing file using the templates in the existing series/ files. All series files need freshness tags. At minimum, populate the header and table structure.

## Dangling Plot Threads

**Problem:** series/THREADS.md has threads with no resolution target or that span completed books without resolution.
**Fix:** Either assign a resolution target (book + chapter) or mark as intentionally unresolved with a note explaining why.

## Missing Book Handoff

**Problem:** A book has Final status but no handoff document exists.
**Fix:** Create `series/handoffs/BOOK-NN-TO-MM.md` following the handoff template. Populate from the completed book's final state.

## Missing Plan Index Entry

**Problem:** Active plan exists in plans/active/ but is not listed in plans/_INDEX.md.
**Fix:** Add a row to the Active Plans table in `plans/_INDEX.md`.

## Guide Modified

**Problem:** guide/ files have been modified during normal operation.
**Fix:** Revert changes. guide/ is read-only reference material. If the guide content is wrong, flag it as an issue — guide changes require an explicit editorial decision.
