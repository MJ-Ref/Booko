# Common Tasks -- Recipe Library
<!-- reviewed: 2026-02-13 -->

> Step-by-step instructions for standard Book_Map tasks.
> Each recipe is self-contained. Follow the steps in order.

---

## Quick Recipe Index

| Task | Key Files Involved |
|---|---|
| [Draft a Chapter from Outline Contract](#1-draft-a-chapter-from-outline-contract) | `docs/book/OUTLINE.md`, `docs/book/VOICE_GUIDE.md`, chapter file, `manuscript/_INDEX.md` |
| [Perform a Developmental Edit](#2-perform-a-developmental-edit) | Chapter file, `docs/book/OUTLINE.md`, `docs/quality/SCORECARD.md`, `docs/quality/DEBT_REGISTER.md` |
| [Perform a Line Edit](#3-perform-a-line-edit) | Chapter file, `docs/book/VOICE_GUIDE.md`, `docs/quality/SCORECARD.md` |
| [Perform a Copy Edit](#4-perform-a-copy-edit) | Chapter file, `docs/book/VOICE_GUIDE.md`, `docs/quality/DEBT_REGISTER.md` |
| [Create an Execution Plan](#5-create-an-execution-plan) | `plans/_TEMPLATE.md`, `plans/_INDEX.md` |
| [Record an Editorial Decision (EDR)](#6-record-an-editorial-decision-edr) | `docs/decisions/_TEMPLATE.md`, `docs/_INDEX.md` |
| [Update Documentation](#7-update-documentation) | Target doc, `docs/_INDEX.md` |
| [Run Quality Checks](#8-run-quality-checks) | `scripts/` |
| [Perform Session Handoff](#9-perform-session-handoff) | `docs/session/SESSION_HANDOFF.md` |
| [Resolve Editorial Debt Items](#10-resolve-editorial-debt-items) | `docs/quality/DEBT_REGISTER.md`, affected chapter files |

---

## 1. Draft a Chapter from Outline Contract

**Role:** Lead Author Agent

1. **Read the outline contract** for the target chapter in `docs/book/OUTLINE.md`. Note the chapter's objectives, key beats, argument points, required scenes, and acceptance criteria.
2. **Read `docs/book/VOICE_GUIDE.md`** to internalize tone, register, POV, and style rules.
3. **Read any relevant world/character/theme docs** referenced by the outline contract (`docs/book/CHARACTERS.md`, `docs/book/WORLD.md`, `docs/book/THEMES.md`).
4. **Create the chapter file** at `manuscript/chapters/CH-XX.md` using the metadata header format:
   ```
   # CH-XX: [Working Title]
   <!-- status: Draft -->
   <!-- updated: YYYY-MM-DD -->
   <!-- pov: [perspective] -->
   <!-- target_words: NNNN -->
   <!-- outline_ref: docs/book/OUTLINE.md#ch-xx -->
   ```
5. **Write the chapter content.** Follow the outline contract's beats in order. Respect voice rules. Mark any uncertain content with `<!-- TK: description -->` or `<!-- TODO: description -->`.
6. **Self-check against the outline contract.** Verify every required beat or argument point is present.
7. **Update `manuscript/_INDEX.md`** -- add or update the chapter's row with status `Draft`, word count, and today's date.
8. **Update `docs/session/SESSION_HANDOFF.md`** with what you wrote, any TK/TODO markers left, and next steps.

---

## 2. Perform a Developmental Edit

**Role:** Developmental Editor Agent

1. **Read `docs/session/SESSION_HANDOFF.md`** to understand current state.
2. **Read the chapter's outline contract** in `docs/book/OUTLINE.md`. This is your evaluation rubric.
3. **Read the chapter file** in full. Assess structure, pacing, argument flow, and completeness against the contract.
4. **Score the chapter** using `docs/quality/SCORECARD.md`. Record scores.
5. **Make structural edits.** Reorder, add, or remove sections as needed to meet the outline contract. For major structural changes, create an EDR first (see Recipe 6).
6. **Log any editorial debt** in `docs/quality/DEBT_REGISTER.md` -- items you noticed but did not fix (e.g., fact-check needed, voice drift in a section).
7. **Update the chapter metadata** -- set status to `Dev-Edited`, update the date. Update `manuscript/_INDEX.md` to match.

---

## 3. Perform a Line Edit

**Role:** Line Editor Agent

1. **Read `docs/book/VOICE_GUIDE.md`** to load voice and style rules.
2. **Read the chapter file** in full. Focus on sentence-level clarity, rhythm, voice consistency, and readability.
3. **Edit line by line.** Improve clarity and flow without changing the chapter's structure or argument. If a structural problem is found, log it in `docs/quality/DEBT_REGISTER.md` and escalate -- do not fix it yourself.
4. **Verify voice consistency** against the voice guide. Flag deviations.
5. **Score the chapter** using the line-edit criteria in `docs/quality/SCORECARD.md`.
6. **Update the chapter metadata** -- set status to `Line-Edited`, update the date. Update `manuscript/_INDEX.md` to match.

---

## 4. Perform a Copy Edit

**Role:** Copy Editor Agent

1. **Read `docs/book/VOICE_GUIDE.md`** for style sheet rules (spelling preferences, formatting conventions, terminology).
2. **Read the chapter file** in full. Focus on grammar, punctuation, spelling, formatting consistency, and factual consistency.
3. **Fix mechanical errors.** Correct grammar, punctuation, and spelling. Normalize formatting to match the style sheet. Do not change meaning or voice.
4. **Check internal consistency.** Verify names, dates, places, and facts are consistent with `docs/book/CHARACTERS.md`, `docs/book/WORLD.md`, and previous chapters.
5. **Remove or resolve TK/TODO markers** where possible. Log any that require author input in `docs/quality/DEBT_REGISTER.md`.
6. **Update the chapter metadata** -- set status to `Copy-Edited`, update the date. Update `manuscript/_INDEX.md` to match.

---

## 5. Create an Execution Plan

**Role:** Any agent

1. **Copy `plans/_TEMPLATE.md`** to `plans/active/PLAN-XXX.md` (assign the next available ID from `plans/_INDEX.md`).
2. **Fill in all metadata fields** -- Plan ID, Title, Status (`Draft`), Author, Created date, Updated date.
3. **Define the Objective, Context, Approach, and Phases/Steps.** Be specific. Each step should have clear acceptance criteria.
4. **Set the plan status to `Active`** when ready to begin execution.
5. **Add a row to `plans/_INDEX.md`** in the Active Plans table.

---

## 6. Record an Editorial Decision (EDR)

**Role:** Any agent (approval required from Lead Author Agent)

1. **Copy `docs/decisions/_TEMPLATE.md`** to `docs/decisions/EDR-XXX.md` (assign the next available ID).
2. **Fill in all fields** -- the decision, rationale, alternatives considered, impact on existing content, and who approved it.
3. **Update `docs/_INDEX.md`** -- add the EDR to the Editorial Decisions table.
4. **Reference the EDR** in any documents or chapters affected by the decision.

---

## 7. Update Documentation

**Role:** Any agent

1. **Identify the single source document** that owns the information you need to update. Do not create a second location for the same information.
2. **Read the current document** in full before making changes.
3. **Make your changes.** Preserve the document's existing structure and conventions.
4. **Update the `<!-- reviewed: YYYY-MM-DD -->` freshness tag** to today's date.
5. **Verify `docs/_INDEX.md`** lists the document. If it is a new document, add it to the appropriate category table.

---

## 8. Run Quality Checks

**Role:** Any agent

Run these scripts from the repository root as needed:

| Script | Description |
|---|---|
| `scripts/check_freshness.sh` | Scans all docs for stale `<!-- reviewed: -->` tags (older than 30 days). Reports which documents need review. |
| `scripts/check_links.sh` | Validates internal cross-references between documents. Reports broken links. |
| `scripts/check_todos.sh` | Finds all `TK`, `TODO`, and `FIXME` markers in the manuscript and docs. Reports count and locations. |
| `scripts/check_status.sh` | Verifies that chapter metadata status matches `manuscript/_INDEX.md`. Reports mismatches. |
| `scripts/word_count.sh` | Counts words per chapter and total. Compares against target word counts in metadata. |
| `scripts/check_debt.sh` | Cross-references `docs/quality/DEBT_REGISTER.md` with actual markers in the manuscript. Reports orphaned or unlogged items. |

---

## 9. Perform Session Handoff

**Role:** Any agent (mandatory at end of every session)

1. **Open `docs/session/SESSION_HANDOFF.md`.**
2. **Set `Last Updated`** to today's date.
3. **Write `Session Summary`** -- one or two sentences describing what this session accomplished.
4. **List `Work Completed`** -- every file created, updated, or deleted, with a brief note on what changed.
5. **List `Work In Progress`** -- anything started but not finished. Be specific about what remains.
6. **List `Blocked Items`** -- anything that cannot proceed and why.
7. **List `Next Steps`** -- concrete actions for the next session. Prioritize.
8. **Fill book-specific fields:**
   - `Narrative Temperature` -- the emotional register of the last written content (e.g., "tense," "reflective," "escalating"). Write N/A if no manuscript work was done.
   - `Last Written Passage` -- quote or reference the last few lines written or edited, so the next agent can pick up the thread.
   - `Dangling Threads` -- any narrative threads, arguments, or setups introduced but not yet resolved.
9. **Save.** This is a snapshot, not a log. The previous contents are overwritten. Git preserves history.

---

## 10. Resolve Editorial Debt Items

**Role:** Varies by item type

1. **Read `docs/quality/DEBT_REGISTER.md`** to identify open items. Pick the highest-priority item appropriate to your role.
2. **Read the affected chapter or document** referenced by the debt item.
3. **Resolve the item.** Fix the TK/TODO marker, correct the inconsistency, verify the fact, or whatever the item requires.
4. **Mark the item as resolved** in `docs/quality/DEBT_REGISTER.md` -- update its status and add the resolution date.
5. **Update `docs/session/SESSION_HANDOFF.md`** to record the resolution.
