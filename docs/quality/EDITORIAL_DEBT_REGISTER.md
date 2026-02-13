<!-- reviewed: 2026-02-13 -->
# Editorial Debt Register

## Purpose

Single source of truth for known quality gaps in the manuscript. Every
unresolved issue — weak passages, term drift, missing citations, continuity
errors — lives here until it is fixed. Nothing gets lost between sessions.

## Register

| ID | Description | Impact | Effort | Owner | Status | Date Added | Target Pass |
|----|-------------|--------|--------|-------|--------|------------|-------------|
| ED-001 | Ch 4 opening example is weak — needs a concrete anecdote to ground the argument | M | M | -- | Open | 2026-02-13 | Pass 2 (Dev Edit) |
| ED-002 | "Methodology" vs "method" used inconsistently across Ch 2, 5, 7 | M | L | -- | Open | 2026-02-13 | Pass 4 (Copy Edit) |
| ED-003 | Ch 9 cites a 2018 study with no page number; original PDF needed | H | M | -- | Open | 2026-02-13 | Fact Check |
| ED-004 | Character age contradicts between Ch 1 (age 34) and Ch 12 (age 32) | H | L | -- | Open | 2026-02-13 | Pass 2 (Dev Edit) |

**Impact:** H = High (affects reader trust or comprehension), M = Medium
(noticeable but not critical), L = Low (cosmetic or minor)

**Effort:** H = High (requires research or major rewrite), M = Medium
(requires focused editing), L = Low (quick fix)

## Prioritization Matrix

|               | **Low Effort** | **Medium Effort** | **High Effort** |
|---------------|----------------|-------------------|-----------------|
| **High Impact**   | Fix immediately | Schedule for next session | Plan and allocate time |
| **Medium Impact** | Fix when in the file | Batch with related work | Defer to target pass |
| **Low Impact**    | Fix opportunistically | Defer to target pass | Defer or drop |

## Review Cadence

| Frequency | Action |
|-----------|--------|
| Every session | Add new debt items as they are discovered |
| Weekly | Review all Open items — update status, reassign owners, adjust priority |
| Monthly | Full audit — verify nothing is missing, archive Resolved items older than 60 days |

## Resolution Process

1. **Pick an item.** Choose based on the prioritization matrix and the current
   editorial pass.

2. **Fix it.** Make the change in the manuscript (and any affected docs).

3. **Update status.** Change the Status column to `Resolved`. Do not delete
   the row — preserve it for audit trail.

4. **Reference in commit.** Include the debt ID in the commit message:
   ```
   fix(ch4): strengthen opening example (ED-001)
   ```

5. **Archive.** During monthly audits, move Resolved items older than 60 days
   to an `## Archived` section at the bottom of this file.

## Status Values

| Status | Meaning |
|--------|---------|
| Open | Known issue, not yet addressed |
| In Progress | Actively being worked on |
| Resolved | Fixed — row preserved for audit trail |
| Deferred | Consciously postponed — must include rationale |
| Dropped | Will not fix — must include rationale |
