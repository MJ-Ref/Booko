# Chapter 12: Skills and Automation

<!-- reviewed: 2026-02-13 -->

> **Pattern:** If a workflow repeats more than twice, encode it as a skill.
> Book-specific skills combine craft knowledge with project management, preserving
> artistic latitude while enforcing stage-appropriate process.

---

## The Challenge

Book development has repeatable workflows. Starting a chapter requires reading
the plan, loading the voice spec, reviewing relevant character or argument specs,
reading the previous unit's closing passage, and setting up the drafting
constraints. Reviewing voice requires comparing a passage against the spec,
identifying drift patterns, and producing specific correction guidance. Checking
continuity requires reading the full manuscript against the continuity bible and
flagging contradictions.

Without encoded skills, these workflows are reinvented in every session. Each
reinvention is slightly different. One session remembers to check the continuity
bible; the next forgets. One session reads the voice spec before drafting;
another skips it because the agent "remembers" the voice (it does not -- it has
no memory between sessions). One session produces a thorough handoff with
creative state fields; another produces a bare-bones task summary.

The inconsistency is the problem. Not because any single session fails
catastrophically, but because the variance across sessions produces a manuscript
with uneven quality, uneven documentation, and invisible gaps. The workflows
exist in the guide and in the author's head. They need to exist in executable
form.

---

## The Principle

**If a workflow repeats more than twice, encode it as a skill.** A skill is a
structured prompt that encapsulates a workflow: what to read, what to do, what
to produce, and what standards to apply. Skills are stored in the project's
`.claude/skills/` directory and invoked by name.

Book-specific skills differ from software engineering skills in one critical
respect: they must **preserve artistic latitude**. A skill that produces a
chapter draft should enforce structural completeness (all four scene elements
present) and voice consistency (matches the spec) without dictating creative
choices (what happens in the scene, what metaphors to use, where the emotion
peaks). The skill sets up the constraints; the agent does the creative work
within those constraints.

Skills are also **stage-appropriate**. A drafting skill does not invoke editing
criteria. An editing skill does not invoke drafting momentum. Each skill knows
which editorial stage it belongs to and applies only the standards relevant to
that stage.

Finally, skills **reference project specs, not generic advice**. A voice-check
skill does not apply general principles of good prose. It compares the passage
against *this project's* voice spec. A continuity-check skill does not look for
generic plot holes. It reads *this project's* continuity bible. Skills are
project-aware by design.

---

## In Practice

### Core Book_Map Skills

#### `/book-map scaffold`

**Purpose:** Set up the Book_Map directory structure in a new project.

**What it does:**
1. Creates the standard directory layout: `docs/`, `plans/`, `books/`,
   `series/`, `guide/` (symlink or copy of the Book_Map guide).
2. Creates template files: `docs/book/VOICE_GUIDE.md`, `docs/book/STYLE_SHEET.md`,
   `docs/session/SESSION_HANDOFF.md`, and per-book scaffolding.
3. Creates the series structure: `series/` with all required tracking documents.
4. Sets up the editorial debt register: `docs/editorial-debt-register.md`.
5. Creates the initial chapter plan template in `plans/`.
6. Verifies the structure is complete and reports any issues.

**When to use:** Once, at project start. Can also be run on an existing project
to identify missing structural elements.

#### `/book-map audit`

**Purpose:** Evaluate a project against the Book_Map standard.

**What it does:**
1. Checks for required files and directories.
2. Evaluates freshness dates on all docs -- flags anything stale.
3. Checks the editorial tracker against actual manuscript files.
4. Reviews the voice spec for completeness (does it include samples, prosodic
   rules, vocabulary guidance, and character voice specs if fiction?).
5. Reviews the structure spec for completeness (does it cover all chapters?).
6. Checks session handoff for creative state fields.
7. Produces a report with scores and specific remediation recommendations.

**When to use:** At project start (to assess an existing project), monthly
during active development, and whenever the project feels like it is drifting.

#### `/book-map draft-chapter`

**Purpose:** Set up and execute a chapter drafting session with full Book_Map
protocol.

**What it does:**
1. Reads the chapter plan from `plans/` for the target chapter.
2. Reads the voice spec, loading relevant character/argument specs.
3. Reads the last 500-1000 words of the previous chapter or section.
4. Reads the session handoff for creative state and transition hooks.
5. Confirms the editorial stage is "drafting" for this chapter.
6. Sets up drafting constraints: no editing, no restructuring, complete units
   only.
7. Produces the draft, writing one unit at a time with completeness checks
   after each.
8. Updates the editorial tracker to reflect drafting progress.
9. Writes the exit ticket with creative state, dangling threads, and
   transition hooks.
10. Updates the session handoff.

**When to use:** For every chapter drafting session. This skill replaces the
manual startup protocol with an automated, consistent version.

#### `/book-map dev-edit`

**Purpose:** Perform a developmental edit on a drafted chapter.

**What it does:**
1. Reads the chapter against the structure spec and chapter plan.
2. Evaluates structural integrity: does the chapter fulfill its role in the
   book's architecture?
3. Evaluates pacing: does the chapter have appropriate variation and momentum?
4. Evaluates substance: are characters/arguments developed adequately?
5. Checks for planted setups without payoffs and payoffs without setups.
6. Produces a structured recommendation document with:
   - Structural assessment (what works, what does not)
   - Pacing assessment (where energy flags, where it surges)
   - Substance assessment (thin spots, underdeveloped elements)
   - Specific revision recommendations (not "make this better" but "expand
     the confrontation scene to give the antagonist a counterargument")
7. Updates the editorial tracker and debt register.

**When to use:** After a chapter's first draft is complete. The dev edit is
the first editorial pass and focuses on big-picture issues.

#### `/book-map line-edit`

**Purpose:** Perform a line edit on a developmentally edited chapter.

**What it does:**
1. Reads the chapter against the voice spec.
2. Identifies voice drift: passages where the prose deviates from the spec's
   prosodic patterns, vocabulary level, or tonal register.
3. Identifies rhythm problems: sentences that are all the same length, paragraphs
   that lack variation, passages that plod or rush.
4. Identifies weak constructions: passive voice where active is called for,
   abstract language where concrete is needed, telling where showing is
   specified.
5. Produces line-level annotations with specific suggestions.
6. Does NOT restructure or alter content -- those are dev-edit concerns.
7. Updates the editorial tracker.

**When to use:** After the developmental edit is complete and its recommendations
have been implemented. The line edit focuses on prose quality, not structure.

#### `/book-map voice-check`

**Purpose:** Quick comparison of a passage against the voice spec and samples.

**What it does:**
1. Reads the target passage (specified by chapter and section/scene).
2. Reads the voice spec, including sample passages and prosodic rules.
3. Compares the passage to the spec across dimensions: sentence length
   distribution, vocabulary level, tonal register, POV consistency, and any
   project-specific voice markers.
4. Produces a brief report: match/drift, specific examples of drift, and
   correction guidance.

**When to use:** During drafting when the agent or author suspects voice drift.
Also useful as a spot check during longer drafting sessions -- run it every
third unit as a calibration step.

#### `/book-map continuity-check`

**Purpose:** Read the full manuscript for internal consistency.

**What it does:**
1. Reads all drafted chapters in order.
2. Reads the continuity bible (`docs/continuity-bible.md`).
3. Checks for contradictions: physical descriptions that change, timeline
   inconsistencies, facts stated differently in different chapters, character
   knowledge that appears before it was learned.
4. Checks for orphaned references: elements mentioned but never resolved,
   characters introduced but never developed, promises made to the reader
   but never kept.
5. Produces a continuity report with specific citations (chapter, section,
   and passage) for each issue found.
6. Updates the continuity bible with any new facts discovered.

**When to use:** After every third chapter is drafted, and again after the
full manuscript draft is complete. Continuity problems are cheaper to fix
early.

#### `/session-handoff`

**Purpose:** Generate a session handoff with book-specific creative fields.

**What it does:**
1. Reviews recent work: what files were modified, what chapters were touched.
2. Reads the current session's output to determine narrative temperature.
3. Extracts the last 200-300 words of written manuscript as the tuning-fork
   passage.
4. Identifies dangling threads from the current session's work.
5. Composes transition hooks for the next unit.
6. Produces the full handoff document with both task state and creative state.

**When to use:** At the end of every session. No exceptions.

### Skill Design Principles for Creative Work

Building effective book skills requires balancing structure with creative
freedom. These principles guide skill design:

**Preserve artistic latitude.** A skill sets constraints, not content. The
`/book-map draft-chapter` skill ensures the agent reads the right specs and
produces complete units. It does not dictate what happens in the scene or how
the argument unfolds. The creative decisions belong to the author and the agent
working within the author's direction.

**Be stage-appropriate.** Every skill belongs to an editorial stage. Drafting
skills enforce drafting standards (completeness, forward momentum, no editing).
Editing skills enforce editing standards (evaluation against criteria, specific
recommendations). A skill that mixes stages undermines the editorial pass system.

**Reference project specs, not generic advice.** A voice-check skill that says
"avoid passive voice" is applying a generic rule that may or may not match the
project's voice spec. A voice-check skill that says "compare against the
prosodic rules in `docs/voice-spec.md`, section 3" is applying the author's
actual decisions. Always point to the spec. Let the spec contain the rules.

**Produce artifacts, not just analysis.** A useful skill produces something: a
draft, a report, an updated tracker, a handoff document. Skills that only
analyze without producing output create work that must be done again. The dev
edit skill does not just identify problems -- it produces a recommendation
document that the revision session can act on directly.

**Fail visibly.** If a skill cannot complete its workflow -- a required spec is
missing, the editorial tracker is out of date, the previous handoff is
incomplete -- it should report the failure clearly rather than proceeding with
incomplete information. A skill that silently skips the voice spec because it
cannot find it produces work that will need to be redone.

### Building Custom Skills

The core skills cover the standard Book_Map workflows. Individual projects may
need additional skills tailored to their specific needs. The author creates
these as the project reveals repeating patterns.

**Identifying skill candidates.** Any time the author or agent performs the same
multi-step workflow for the third time, it is a skill candidate. Common
candidates:

- Research integration (reading source material and incorporating it into a
  chapter plan)
- Dialogue passes (reviewing a chapter specifically for dialogue quality)
- Opening hook review (evaluating chapter openings against engagement criteria)
- Theme tracking (reading the manuscript for thematic consistency)

**Skill structure.** A custom skill follows the same format as the core skills:

```markdown
# Skill: [Name]

## Purpose
[One sentence: what this skill does]

## Inputs
- [What the skill reads: specs, manuscript sections, plans]

## Process
1. [Step 1]
2. [Step 2]
...

## Outputs
- [What the skill produces: report, draft, updated document]

## Stage
[Which editorial stage this skill belongs to]

## Quality Criteria
[How to evaluate whether the skill's output is adequate]
```

Store custom skills in `.claude/skills/book-map/` alongside the core skills.

---

## By Book Type

### Fiction Skills

**Character consistency check.** Reads all scenes featuring a specific character
and evaluates consistency of voice, behavior, and knowledge state. Flags scenes
where the character acts outside their established psychology without narrative
justification. Particularly valuable for novels with large casts or multiple
POV characters.

**Timeline verification.** Constructs a timeline from manuscript events and
checks for temporal impossibilities: a character in two places at once, events
that reference days of the week inconsistently, travel times that do not match
distances, seasons that shift implausibly. Produces a timeline document that
becomes part of the continuity bible.

**Subplot tracker.** Maps all subplots across chapters: where each is
introduced, developed, and resolved. Identifies subplots that are introduced
but never resolved, subplots that resolve without adequate development, and
chapters where no subplot advances. Produces a subplot matrix that can guide
developmental editing.

### Nonfiction Skills

**Source audit.** Reviews all claims in a chapter against cited sources. Flags
claims without sources, sources that do not support the claims they are cited
for, and sources that are outdated or contested. Produces an audit report that
guides the fact-checking pass.

**Argument map.** Constructs a visual (text-based) map of the book's argument:
premise leads to sub-argument 1, which depends on evidence A and B, which leads
to sub-argument 2, and so on. Identifies logical gaps, unsupported leaps, and
circular reasoning. The map becomes a planning tool for revision.

**Reader-level calibration.** Evaluates a chapter against the intended reader
profile (from the structure spec). Flags passages that assume knowledge the
target reader may not have, passages that over-explain concepts the target
reader already knows, and jargon that has not been glossed. Produces
recommendations for adjusting the difficulty level.

### Memoir Skills

**Sensitivity review.** Reads the manuscript for passages involving living
people, legally sensitive claims, or emotionally charged material. Flags
passages that may need legal review, consent from the people depicted, or
additional authorial consideration. Does not make judgment calls -- presents
the passages to the author for review.

**Timeline reconstruction.** Helps the memoirist build a timeline of their own
life by extracting dates, ages, and temporal references from drafted episodes.
Identifies gaps and inconsistencies. Produces a chronological framework that
can support both linear and non-linear narrative structures.

**Fact-vs-memory flagging.** Identifies passages where the author presents
memories as factual claims (dates, quotes, sequences of events) and flags them
for verification. Memoir relies on memory, which is unreliable. The skill does
not challenge the author's memory -- it identifies moments where the author may
want to verify, qualify, or acknowledge uncertainty.

---

*Skills are crystallized experience. Every workflow that has been performed
manually, refined through repetition, and documented in a skill is a workflow
that will never again be performed inconsistently. The Book_Map skills encode
craft knowledge -- not generic writing advice, but the specific protocols that
make agent-assisted book development produce manuscripts that read as if one
mind wrote them. Build the skills once. Use them every session. Improve them as
the project reveals what they are missing.*
