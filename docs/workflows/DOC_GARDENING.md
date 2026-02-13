<!-- reviewed: 2026-02-13 -->
# Documentation Gardening Workflow

## Purpose

Keep every file in `docs/` accurate, current, and trustworthy. Stale
documentation misleads agents and humans alike — regular maintenance prevents
drift between the docs and the actual manuscript.

## Freshness Policy

Every document in `docs/` must carry a freshness tag on its first line:

```markdown
<!-- reviewed: YYYY-MM-DD -->
```

This tag records the date the document was last reviewed or updated. It is the
basis for all staleness checks.

## Staleness Thresholds

| Age (days) | Status   | Action Required |
|------------|----------|-----------------|
| 0-30       | Fresh    | None |
| 31-60      | Aging    | Review at next session touching related content |
| 61-90      | Stale    | Review and update before using as reference |
| 90+        | Critical | Immediate review — do not trust until verified |

## Gardening Workflow

### 1. Triage

Identify docs that need attention:

```bash
scripts/check-doc-freshness.sh
```

The script reports every document grouped by staleness tier. Start with
Critical, then Stale.

### 2. Update

For each flagged document:

- Re-read the document fully.
- Compare it against the current manuscript and any recent EDRs.
- Fix inaccuracies, remove obsolete sections, add missing information.
- If a doc is still accurate, update only the freshness tag.

### 3. Verify

- Confirm that cross-references to other docs still resolve.
- Confirm that file paths mentioned in the doc still exist.
- Run `scripts/check-doc-freshness.sh` again to confirm the fix.

### 4. Commit

- Commit doc updates separately from manuscript changes when possible.
- Use a commit message prefix: `docs:` (e.g., `docs: refresh voice guide`).

## Triggers

Documentation gardening should happen when:

| Trigger | Scope |
|---------|-------|
| A chapter is drafted, revised, or edited | Update any doc that references that chapter |
| A new EDR is accepted | Update style sheet, outline, or voice guide as needed |
| Time-based (weekly) | Run freshness check and address Stale/Critical docs |
| Audit findings | Address specific docs flagged by quality scorecard |

## Agent Responsibility

Agents interacting with the Book_Map system must:

1. **Session start.** Check freshness of every doc they plan to reference.
   Do not trust Critical docs without re-verifying them first.

2. **During work.** When changing a chapter, check whether the change
   invalidates any doc (outline, continuity bible, glossary, style sheet).
   Update affected docs immediately.

3. **Session end.** Update the freshness tag (`<!-- reviewed: YYYY-MM-DD -->`)
   on every doc that was read or modified during the session.

## Running the Check

```bash
scripts/check-doc-freshness.sh
```

Expected output format:

```
CRITICAL (90+ days):
  docs/book/GLOSSARY.md — last reviewed 2025-10-01 (135 days ago)

STALE (61-90 days):
  books/book-01/docs/book/OUTLINE.md — last reviewed 2025-11-20 (85 days ago)

AGING (31-60 days):
  docs/book/VOICE_GUIDE.md — last reviewed 2025-12-28 (47 days ago)

FRESH (0-30 days):
  docs/workflows/AUTHORING.md — last reviewed 2026-02-01 (12 days ago)
```
