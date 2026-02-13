# /book-map

Scaffold, audit, and manage Book_Map projects.

## Subcommands

### /book-map scaffold

Scaffold the Book_Map structure in the current project directory.

**Instructions for Claude:**

1. Read `references/directory-spec.md` for the complete file/directory specification.
2. Create all required directories that do not exist.
3. Create all required files that do not exist, using appropriate templates.
4. For each file created, add the `<!-- reviewed: YYYY-MM-DD -->` freshness tag with today's date.
5. Do NOT overwrite existing files — only create missing ones.
6. After scaffolding, run the audit subcommand to verify completeness.

**Output format:**
```
Created: [list of files/dirs created]
Skipped: [list of files/dirs that already existed]
Run `/book-map audit` to verify completeness.
```

### /book-map audit

Audit the current project against the Book_Map standard.

**Instructions for Claude:**

1. Read `references/checklist.md` for the audit criteria.
2. Check each criterion and report pass/fail.
3. For each failure, reference `references/remediation.md` for the fix.
4. Report an overall score (pass count / total count).

**Output format:**
```
Book_Map Audit Results
======================
[Category]: [pass/fail count]
  ✓ criterion description
  ✗ criterion description → fix: [remediation step]

Overall: [total pass] / [total checks] passed
```

### /book-map add-book

Add a new book to the series.

**Instructions for Claude:**

1. Determine the next book number by checking existing `books/book-NN/` directories.
2. Create the book directory structure:
   ```
   books/book-NN/
     manuscript/
       _INDEX.md
       front_matter/.gitkeep
       chapters/
       back_matter/.gitkeep
     docs/
       _INDEX.md
       book/
         OVERVIEW.md
         OUTLINE.md
         CONTINUITY_BIBLE.md
   ```
3. Populate each file with appropriate templates:
   - `manuscript/_INDEX.md` — empty chapter status table
   - `docs/_INDEX.md` — per-book doc index linking to book-specific and shared docs
   - `docs/book/OVERVIEW.md` — minimal book premise referencing series arc
   - `docs/book/OUTLINE.md` — empty outline with contract format
   - `docs/book/CONTINUITY_BIBLE.md` — initialized from previous book's final state
4. Add the new book to `books/_INDEX.md`.
5. Create a handoff template at `series/handoffs/BOOK-NN-TO-MM.md` (from previous book to this one).
6. Update `docs/_INDEX.md` to include the new per-book documents.

**Output format:**
```
Created book-NN:
  books/book-NN/manuscript/_INDEX.md
  books/book-NN/manuscript/front_matter/.gitkeep
  books/book-NN/manuscript/chapters/
  books/book-NN/manuscript/back_matter/.gitkeep
  books/book-NN/docs/_INDEX.md
  books/book-NN/docs/book/OVERVIEW.md
  books/book-NN/docs/book/OUTLINE.md
  books/book-NN/docs/book/CONTINUITY_BIBLE.md

Updated:
  books/_INDEX.md
  series/handoffs/BOOK-[prev]-TO-NN.md
  docs/_INDEX.md
```
