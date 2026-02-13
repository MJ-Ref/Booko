# Chapter 8: Scenes and Sections -- The Unit of Work

<!-- reviewed: 2026-02-13 -->

> **Pattern:** Scope every agent session to a complete scene (fiction) or complete
> section (nonfiction). Each unit is small enough for one session, large enough to
> be meaningful, and connected to the whole through explicit entry and exit
> conditions.

---

## The Challenge

Agent sessions have natural boundaries. Context windows fill up. Time runs out.
Attention drifts. The author closes the laptop. These boundaries are real and
non-negotiable.

Book content also has natural boundaries. Scenes end. Sections conclude.
Chapters close. These boundaries are structural and serve the reader.

When session boundaries and content boundaries do not align, the manuscript
suffers in predictable ways:

- **Ragged half-finished scenes.** A session ends mid-scene. The next session
  picks up with different momentum, different micro-tone, different sense of
  where the scene was going. The seam is visible to any attentive reader.
- **Orphaned transitions.** A session drafts the body of a scene but not the
  transition into the next. The opening of the following scene is written by a
  different session that never read how the previous one ended. The result is a
  gap -- not a gap in content, but a gap in narrative flow.
- **Chapters that trail off.** A session runs out of context window three
  quarters through a chapter. The remaining quarter is completed perfunctorily
  in the next session, which is already thinking about the chapter after that.
  The ending is flat because no one owned it.
- **Scope mismatch.** A session attempts an entire chapter when it should have
  attempted a single scene. It produces shallow work across too many pages
  instead of deep work across the right number of pages.

The root cause is the same in every case: the session did not have a clearly
scoped unit of work that matched a natural content boundary.

---

## The Principle

**The unit of work is a complete scene (fiction) or a complete section
(nonfiction).** Complete means it has all of its required parts and can stand as
a coherent piece of the larger whole. Small enough means one session can draft it
with attention to spare. Large enough means it advances the book by a meaningful
increment.

A unit of work is not a word count. Word counts produce padding. A unit of work
is a structural increment: one scene that moves the story forward, one section
that advances the argument by one step, one episode that illuminates the theme.

The unit connects to the whole through two explicit mechanisms: **entry
conditions** (what must be true before writing begins) and **exit conditions**
(what must be true before the unit is considered complete). These are not
bureaucratic checklists. They are craft constraints that prevent the most common
drafting failures.

---

## In Practice

### Scene Anatomy (Fiction)

A complete fiction scene has four elements:

1. **Opening hook.** The scene opens with a reason to keep reading. This can be
   a question, a tension, a sensory detail, or a change in status quo. It orients
   the reader in time, place, and point of view within the first few sentences.

2. **Escalation.** The scene's central tension develops. Stakes rise. A
   character wants something and encounters resistance. Information is revealed.
   Pressure builds. This is the body of the scene and usually its longest part.

3. **Turning point.** Something shifts. A decision is made, a truth is
   revealed, a plan fails, a relationship changes. The scene is not the same
   after this moment as it was before. Without a turning point, the scene is
   an event, not a story beat.

4. **Resolution or cliffhanger.** The scene either resolves its immediate
   tension (providing a moment of completion) or deliberately withholds
   resolution (creating forward momentum). Both are valid; neither is accidental.

A scene is **complete** when it has all four elements and advances at least one
story element: plot, character development, thematic argument, or world-building.
If it does none of these, it should not exist regardless of how well-written
it is.

### Section Anatomy (Nonfiction)

A complete nonfiction section has four elements:

1. **Claim or question.** The section opens by stating what it will demonstrate
   or what question it will answer. The reader knows within two sentences what
   this section is for.

2. **Development.** The claim is unpacked, qualified, contextualized. The
   question is explored from relevant angles. This is where reasoning happens.

3. **Evidence or example.** The development is grounded in concrete support:
   data, anecdote, case study, quotation, or worked example. Abstract arguments
   without evidence are opinions. Evidence without argument is a data dump.

4. **Synthesis and transition.** The section draws its conclusion and connects
   to what comes next. The synthesis answers the opening question or confirms the
   opening claim. The transition creates a bridge to the following section.

A section is **complete** when it advances the chapter's argument by one step.
Each section in a chapter should be removable only at the cost of a gap in the
argument -- if removing it changes nothing, the section has not earned its place.

### Scoping a Session

Before writing begins, the agent follows this protocol:

1. **Read the plan.** Open the chapter plan (from `plans/`) and identify the
   next unwritten unit (scene or section).
2. **Read entry conditions.** What has happened before this unit? Read the
   previous unit's closing passage (last 200-500 words). Read any character or
   argument specs relevant to this unit.
3. **Confirm scope.** The session will produce exactly one unit. Not half a unit.
   Not two units. One.
4. **Draft the unit.** Write all four elements. Do not stop at the turning point
   and leave resolution for later. Do not write the opening and skip to the next
   scene.
5. **Verify completeness.** Does the unit have all four elements? Does it
   advance at least one story/argument element? Does the opening reference
   something from the previous unit's close?
6. **Write the exit ticket.** Compose the transition hook and session handoff
   entry that sets up the next unit.

### The Transition Problem

Transitions are where sessions fail most often. The closing of unit N and the
opening of unit N+1 must feel continuous even when they are written hours, days,
or sessions apart.

The solution is explicit coupling:

- Each unit's **closing** includes a forward-pointing element: an unanswered
  question, an anticipation, a stated intention, or a shift in emotional state
  that demands continuation.
- Each unit's **opening** references the previous unit's closing element: it
  picks up the question, fulfills or subverts the anticipation, acts on the
  intention, or responds to the emotional shift.

This coupling is documented in the session handoff under "Dangling Threads" and
"Transition Hooks." The next session reads these before writing a single word.

### The Exit Ticket

At the end of every drafting session, the agent writes an exit ticket -- a short
block stored in the session handoff that captures:

```markdown
## Exit Ticket

### Unit Completed
Chapter 7, Scene 3: "The confrontation at the bridge"

### Final Passage Summary
[2-3 sentences describing the emotional/narrative state at the end of the unit]

### Transition Hook
[What the opening of the next unit should reference or respond to]

### Dangling Threads
- [Thread 1: what was left unresolved, where it should be picked up]
- [Thread 2: ...]

### Next Unit
Chapter 7, Scene 4: "Aftermath" -- [1-sentence description from plan]
```

The exit ticket is not optional. A session that produces a drafted scene but no
exit ticket has created work for the next session at the cost of quality for
the reader.

### Chapter Assembly

Individual units are drafted in separate sessions. They compose into chapters
during a dedicated assembly step:

1. **Read all units** for the chapter in order. Do not skim. Read as a reader
   would, start to finish.
2. **Check transitions.** Does each unit's opening flow naturally from the
   previous unit's close? Mark any seams.
3. **Check pacing.** Does the chapter as a whole have shape -- an arc, a build,
   a rhythm? Or is it a flat sequence of equal-weight units?
4. **Check coherence.** Does the chapter deliver on its promise? For fiction: does
   the chapter advance the act's purpose? For nonfiction: does the chapter
   complete its sub-argument?
5. **Repair seams.** Smooth transitions, adjust pacing beats, cut or expand as
   needed. This is a targeted edit pass, not a rewrite.

Assembly is its own session. It is not tacked onto the end of the last unit's
drafting session.

---

## By Book Type

### Fiction

**Scene vs. chapter relationship.** A chapter may contain one scene or several.
Single-scene chapters are punchy and fast-paced. Multi-scene chapters allow
modulation -- a tense scene followed by a reflective one, an action beat
followed by a relationship beat. The chapter plan should specify how many scenes
compose each chapter and what purpose each serves.

**Multi-scene chapters.** When a chapter has three or four scenes, each scene is
still a separate unit of work. The agent drafts Scene 1 in one session, Scene 2
in the next. Assembly happens after all scenes are drafted. Do not draft the
entire multi-scene chapter in one session unless the scenes are very short (under
800 words each).

**Interlude patterns.** Some books use short interlude chapters between major
chapters: epigraphs, found documents, alternate POV glimpses. These interludes
are their own units of work. They are scoped, planned, and drafted with the same
discipline as full scenes, even when they are only 200-400 words. Brevity is not
an excuse for carelessness.

### Nonfiction

**Section as argument step.** Each section advances the chapter's argument by
exactly one logical step. If you cannot articulate the step in a single sentence,
the section's scope is unclear. Write the step as a marginal note before
drafting.

**Chapter as sub-argument.** Each chapter completes one sub-argument within the
book's larger thesis. The chapter plan should state the sub-argument explicitly.
When all sections are assembled, the sub-argument should be demonstrably
complete.

**Sidebar and callout patterns.** Nonfiction uses sidebars (extended examples,
technical deep-dives, historical context) and callouts (key takeaways, warnings,
definitions). These are units of work in their own right but are scoped smaller
than main sections. A sidebar is typically 200-600 words. Plan them, draft them,
and integrate them during chapter assembly.

### Memoir

**Episode as unit of memory.** The memoir unit is the episode: a specific memory
rendered in scene. Unlike fiction scenes, memoir episodes connect to theme rather
than plot. The structural question is not "what happens next?" but "what does
this illuminate?"

**Episodes connect to theme, not timeline.** Chronological order is one option,
but memoir episodes often work better arranged by thematic resonance. The entry
and exit conditions for a memoir unit reference the thematic thread, not the
date. "This episode follows the previous one because both explore the cost of
silence" is a stronger structural connection than "this happened in 1987 and the
previous one happened in 1985."

**The completeness test for memoir.** A memoir episode is complete when it
renders a specific memory in enough sensory and emotional detail that the reader
experiences it, and when it connects -- explicitly or implicitly -- to the
book's central question. An episode that is vivid but thematically disconnected
is an anecdote, not a chapter unit.

---

*The unit of work is the atom of book development. Get the atom right -- complete,
scoped, connected -- and the molecule (chapter) and the organism (book) follow.
Get it wrong, and no amount of editing can fully repair the seams.*
