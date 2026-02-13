# Book_Map Guide

<!-- reviewed: 2026-02-13 -->

## What This Guide Is

This guide serves a dual purpose:

1. **Methodology reference** -- it describes the Book_Map system: why it exists,
   how its parts fit together, and the principles behind every structural
   decision.
2. **Craft reference for agent-led book development** -- it gives concrete,
   actionable guidance on the writing-craft problems that arise when an agent
   and an author collaborate on a book-length manuscript.

The guide is designed to be read by humans and consumed by agents. Every chapter
follows a consistent four-section format (described below) so that any reader --
human or machine -- can locate the information they need quickly.

This is *read-only reference material*. It does not change during normal
operation. The living, mutable truth about any specific book project lives in
`docs/`, `plans/`, and `manuscript/`. This guide tells you *how* to use those
spaces; the spaces themselves tell you *what* is happening right now.

---

## Audience

Three audiences read this guide, and each takes something different from it:

### Authors Using Agent-Assisted Development

You are writing a book with the help of an AI agent. You need to understand the
system well enough to make high-level decisions (voice, structure, pacing) and
to evaluate the agent's output. You do not need to memorize every chapter, but
you should read the guide once and return to specific chapters when a craft
question arises.

### Agents Working on Book Projects

You are an AI agent tasked with drafting, editing, or planning a book. This
guide is your primary craft reference. Before beginning any writing session,
consult the relevant chapters. Before making a structural decision, check the
architecture chapter. Before touching voice, re-read the voice chapter. The
guide exists so you do not have to reinvent craft principles from scratch in
every session.

### Editors Evaluating Manuscripts

You are reviewing work produced by the Book_Map system. The guide tells you what
standards the manuscript was written against, what editorial passes it has been
through, and what quality criteria apply. Use it to calibrate your feedback.

---

## Three-Act Organization

The guide is organized in three acts, mirroring the natural progression from
understanding the system, to mastering the craft, to operating at scale.

### Act I: Foundations (Chapters 1--4)

These chapters establish *why* the system exists and *what* decisions anchor
every book project. Read these first. They cover the system's rationale, voice
specification, book architecture, and the role of prior art.

### Act II: Craft (Chapters 5--8)

These chapters address the core craft problems of book-length writing: pacing,
character and argument development, editorial process, and the practical unit of
work. This is where agents spend most of their reference time during active
drafting and editing.

### Act III: System (Chapters 9--12)

These chapters cover the operational side: collaboration between author and
agent, maintaining momentum across a long project, quality assurance, and
automation. They are most relevant during project planning and when diagnosing
process problems.

---

## Chapter Table

| #  | Title                            | Focus                                           |
|----|----------------------------------|-------------------------------------------------|
| 01 | Why Book_Map Exists              | System rationale, failure modes, content zones   |
| 02 | Voice and Tone                   | Voice specification, discovery, verification     |
| 03 | Book Type and Architecture       | Structural patterns, architecture decisions      |
| 04 | Prior Art and Inspiration        | Influences, comp titles, source tracking         |
| 05 | Pacing and Rhythm                | Variation, momentum, the sagging middle          |
| 06 | Character and Argument           | Development frameworks for fiction and nonfiction |
| 07 | Editorial Passes                 | The 5-pass editorial system                      |
| 08 | Unit of Work                     | Session scope, deliverables, plan granularity    |
| 09 | Author-Agent Collaboration       | Communication, delegation, review loops          |
| 10 | Momentum and Continuity          | Long-project stamina, context recovery           |
| 11 | Quality and Acceptance           | Criteria, checklists, stage gates                |
| 12 | Automation and Tooling           | Scripts, templates, validation pipelines         |

---

## Chapter Format

Every chapter follows the same four-section structure:

### The Challenge

What goes wrong without deliberate attention to this topic. Concrete failure
modes, not abstract concerns. This section motivates the chapter -- if the
challenge does not feel real, the chapter has not earned its place.

### The Principle

The core insight or rule that addresses the challenge. This is the "one thing to
remember." It should be expressible in a single sentence, then unpacked.

### In Practice

How the principle translates into concrete actions, documents, and workflows
within the Book_Map system. This is the longest section and the one agents
reference most frequently. It includes document templates, decision frameworks,
checklists, and examples.

### By Book Type

How the principle and practices adapt for different book types. The three
primary types are:

- **Fiction** -- novels, novellas, short story collections
- **Nonfiction** -- business, self-help, science, history, how-to
- **Memoir** -- personal narrative, autobiography, essay collections

Some chapters address additional hybrid or specialized forms.

---

## Relationship to Other Directories

```
Book_Map/
  guide/      <-- You are here. Read-only reference.
  docs/       <-- Operational truth. Voice specs, structure specs,
  |               character docs, argument docs. Mutable.
  plans/      <-- Work plans. What to do next. Mutable.
  manuscript/ <-- The actual book. Mutable.
  scripts/    <-- Automation. Mutable.
```

The guide tells you *how* to create and maintain the documents in `docs/`. It
tells you *how* to write and execute the plans in `plans/`. It tells you *what
standards* the prose in `manuscript/` should meet. But the guide itself does not
change when those things change.

If you find a conflict between the guide and the operational documents in
`docs/`, the `docs/` version wins for the current project. The guide describes
the general system; `docs/` describes this specific book.

---

## How to Use This Guide

**Starting a new project:** Read chapters 01--04 in order. Create the
foundational documents they describe (`docs/voice-spec.md`,
`docs/structure-spec.md`, `docs/prior-art.md`). Then read chapters 05--07
before beginning to draft.

**Mid-project reference:** Jump to the relevant chapter. Use the four-section
structure to find what you need -- most operational questions are answered in
"In Practice."

**Diagnosing problems:** If the manuscript feels wrong but you cannot pinpoint
why, work through the chapters in order. The problem is usually in voice (Ch 2),
structure (Ch 3), or pacing (Ch 5).

**Agent session start:** Review the chapter(s) relevant to the current task
before beginning work. This takes less than a minute and prevents drift.

---

## A Note on Completeness

This guide covers all twelve chapters across three acts. The craft fundamentals
in Acts I and II and the operational guidance in Act III are stable and
sufficient for productive book development.

The system is designed to grow. If you encounter a craft problem not covered
here, the right response is to solve it for the current project in `docs/` and
then, during a review cycle, consider whether the solution belongs in the guide
as well.
