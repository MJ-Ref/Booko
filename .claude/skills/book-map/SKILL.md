# /book-map

Scaffold and audit Book_Map projects.

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
