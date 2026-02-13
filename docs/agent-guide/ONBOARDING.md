# Agent Onboarding Guide
<!-- reviewed: 2026-02-13 -->

## Welcome

You are working on a book project managed by **Book_Map** -- an agent-first book authoring and editing system. This repository is designed so that AI agents can pick up work, understand context quickly, and hand off cleanly to the next agent or session.

Everything you need to know is documented. You should never have to guess.

---

## First Steps

Complete these in order:

1. **Read your entry file** -- either `AGENTS.md` or `CLAUDE.md` at the repository root. This tells you what kind of agent you are and points you to the routing table.
2. **Read this document** -- you are here.
3. **Read [SESSION_HANDOFF.md](../session/SESSION_HANDOFF.md)** -- understand what happened last session, what is in progress, and what comes next.
4. **Read the active plan** -- check `plans/_INDEX.md` for any plan with status `Active`, then read that plan in full.

Only after these four steps should you begin work.

---

## Repository Structure

| Zone | Purpose | Mutable? |
|---|---|---|
| `docs/` | All project documentation: architecture, decisions, workflows, quality, agent guides, session state | Yes -- update as you work |
| `books/` | Per-book manuscripts, chapters, front/back matter, and book-specific docs | Yes -- this is the product |
| `series/` | Series-level continuity: characters, world, timeline, threads, reader knowledge | Yes -- update at book boundaries |
| `plans/` | Execution plans (active and completed) | Yes -- create, update, complete |
| `guide/` | Stable reference material and style rules provided by the human author | **No** -- read only |
| `scripts/` | Automation and quality-check scripts | **No** -- read only unless directed |

---

## Key Principles

1. **Progressive Disclosure** -- Do not read the entire repository at the start of a session. Read your entry file, follow the routing table to what you need, and stop. Load documents only when the task demands them.

2. **Single Source of Truth** -- Every fact, rule, or decision lives in exactly one document. Other documents link to it; they do not duplicate it. If you find duplication, eliminate it.

3. **Docs as System of Record** -- The documentation is the authority. If the code or manuscript contradicts the docs, the docs win (and the discrepancy must be fixed). Decisions are not real until recorded in an EDR.

4. **Freshness Dates** -- Every document carries a `<!-- reviewed: YYYY-MM-DD -->` tag. When you read or update a document, refresh this tag to today's date. Documents older than 30 days are considered stale.

5. **One Pass Per Session** -- Each session should perform one type of editorial work on a chapter. Do not mix drafting with line editing, or developmental editing with copy editing. Keep passes clean and sequential.

---

## Navigation Path

```
Entry File (AGENTS.md / CLAUDE.md)
  -> Routing Table (tells you which docs to read for your role)
    -> docs/_INDEX.md (master index of all documentation)
      -> Specific document you need
```

When in doubt, start at `docs/_INDEX.md` and find the document by category.

---

## Session Protocol

Every session follows this cycle:

1. **Check In** -- Read `SESSION_HANDOFF.md`. Understand current state.
2. **Plan** -- Identify the task. Read the relevant plan and workflow doc.
3. **Work** -- Execute the task. Update documents as you go. Refresh freshness tags.
4. **Hand Off** -- Overwrite `SESSION_HANDOFF.md` with a complete snapshot of where things stand. This is mandatory, even if the session was short.

---

## What NOT to Do

- **Do not modify `guide/`** -- This directory contains stable reference material from the human author. Treat it as read-only.
- **Do not duplicate content** -- Link to the source document instead. If two documents say the same thing, one of them is wrong (or will become wrong).
- **Do not skip freshness dates** -- Every document you touch gets an updated `<!-- reviewed: YYYY-MM-DD -->` tag.
- **Do not skip handoff** -- Even if you only worked for five minutes, update `SESSION_HANDOFF.md` before ending.
- **Do not read the entire repo at start** -- Follow progressive disclosure. Load only what your current task requires.
- **Do not mix editorial passes** -- A drafting session is not a line-edit session. A developmental edit is not a copy edit. One pass type per session per chapter.
- **Do not make voice or structure decisions without EDRs** -- If you want to change the book's voice, narrative structure, chapter order, or any significant editorial element, you must create an Editorial Decision Record first. See `docs/decisions/_TEMPLATE.md`.

---

## Quick Reference

| I need to... | Go to... |
|---|---|
| Understand the book's premise and scope | `docs/book/OVERVIEW.md` (series) or `books/book-NN/docs/book/OVERVIEW.md` (per-book) |
| See what chapters exist and their status | `books/book-NN/manuscript/_INDEX.md` |
| Know the voice and style rules | `docs/book/VOICE_GUIDE.md` |
| Draft a chapter | `docs/workflows/AUTHORING.md` |
| Edit a chapter | `docs/workflows/REVISION.md`, `LINE_EDIT.md`, or `COPY_EDIT.md` |
| Record a major editorial decision | `docs/decisions/EDR/000-template.md` |
| Check quality criteria | `docs/quality/QUALITY_SCORECARD.md` |
| See what debt items are outstanding | `docs/quality/EDITORIAL_DEBT_REGISTER.md` |
| Find or create a plan | `plans/_INDEX.md` |
| See who does what | `docs/agent-guide/ROLE_CARDS.md` |
| Learn how to do a specific task | `docs/agent-guide/COMMON_TASKS.md` |
| Hand off my session | `docs/session/SESSION_HANDOFF.md` |
