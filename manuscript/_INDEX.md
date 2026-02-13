# Manuscript Index
<!-- reviewed: 2026-02-13 -->

> Status tracking for all chapters in the manuscript.

---

## Chapter Status

| Chapter | Title | Status | Word Count | POV | Outline Ref | Last Updated |
|---|---|---|---|---|---|---|
| CH-01 | [Working Title] | Draft | 0 | [perspective] | [OUTLINE.md#ch-01](../docs/book/OUTLINE.md#ch-01) | 2026-02-13 |
| CH-02 | [Working Title] | Draft | 0 | [perspective] | [OUTLINE.md#ch-02](../docs/book/OUTLINE.md#ch-02) | 2026-02-13 |
| CH-03 | [Working Title] | Draft | 0 | [perspective] | [OUTLINE.md#ch-03](../docs/book/OUTLINE.md#ch-03) | 2026-02-13 |

---

## Status Values

Chapters progress through these statuses sequentially:

1. **Draft** -- Initial content written from the outline contract
2. **Dev-Edited** -- Developmental edit pass completed (structure, pacing, argument flow)
3. **Line-Edited** -- Line edit pass completed (clarity, voice, sentence-level quality)
4. **Copy-Edited** -- Copy edit pass completed (grammar, formatting, consistency)
5. **Final** -- All editorial passes complete; accepted by Lead Author Agent

---

## Summary

- **Total chapters:** 3
- **Total words:** 0
- **Chapters by status:**
  - Draft: 3
  - Dev-Edited: 0
  - Line-Edited: 0
  - Copy-Edited: 0
  - Final: 0

---

## Rules

- **Status must match the chapter file's metadata header.** If the `<!-- status: -->` tag in the chapter file says `Dev-Edited`, this index must also say `Dev-Edited`. Run `scripts/check_status.sh` to verify.
- **Workflow gates are sequential.** Chapters advance through statuses in order: Draft -> Dev-Edited -> Line-Edited -> Copy-Edited -> Final. No skipping. A chapter cannot be Line-Edited until it has been Dev-Edited. A chapter cannot be marked Final until it has been Copy-Edited.
- **Update this index whenever a chapter's status changes.** Every editorial pass that changes a chapter's status must also update this table.
