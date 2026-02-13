# Chapter 9: Agent Collaboration -- Session Protocol and Creative Handoffs

<!-- reviewed: 2026-02-13 -->

> **Pattern:** Document creative decisions well enough that any agent can
> implement them faithfully. Preserve creative state -- tone, mood, momentum --
> not just task state, across every session boundary.

---

## The Challenge

An agent writing a book faces a problem that no solo author faces: it must write
in someone else's voice, maintain choices it did not make, and produce work that
feels as if it came from one mind. The author has shifted from writer to creative
director, and the agent has become the hands on the keyboard. This relationship
is new, fragile, and full of failure modes.

**Session boundaries create narrative seams.** Every time a session ends and a
new one begins, there is a discontinuity. The new session does not remember the
rhythm it was building, the tone it was sustaining, or the emotional arc it was
shaping. It starts cold. If the handoff captures only task state ("wrote scenes
3-5, start scene 6"), the new session has the facts but not the feel. The
resulting prose reads like it was written by a committee -- because it was.

**Multiple agents on different chapters create voice inconsistency.** When one
agent drafts chapter 4 and a different agent drafts chapter 5, each may produce
competent prose that sounds nothing like the other. Both may faithfully follow
the voice spec, yet the spec cannot capture every micro-decision: sentence
rhythm on a given page, the specific temperature of the narrator's detachment,
whether this passage leans lyrical or clipped. These micro-decisions accumulate
into what readers perceive as "voice," and they are the first thing lost at a
session boundary.

**The author's role changes.** In traditional writing, the author is the
instrument. In agent-assisted writing, the author becomes the conductor. This
shift is disorienting. Authors who try to remain the instrument (rewriting every
line the agent produces) burn out. Authors who fully abdicate (accepting
everything uncritically) end up with a book that is not theirs. The productive
middle ground requires a new set of skills: articulating creative intent clearly
enough for an agent to execute it, evaluating output against that intent, and
making corrections at the level of direction rather than dictation.

---

## The Principle

Agent collaboration works when two conditions are met:

1. **Creative decisions are documented well enough that any agent can implement
   them faithfully.** This means voice specs, character specs, argument specs,
   and structural plans that are specific, concrete, and current. "Write in a
   warm, conversational tone" is not enough. "Short sentences. Active voice.
   Second person for instructions, first person for anecdotes. Contractions
   always. Technical terms introduced with a plain-English gloss before first
   use." That is enough.

2. **Session protocol preserves creative state, not just task state.** The
   handoff between sessions must capture where the narrative *is* emotionally and
   tonally, not just what was written. A session that ended on a building
   crescendo must hand off the crescendo, not just the scene number.

When both conditions are met, session boundaries become invisible to the reader.
When either fails, the seams show.

---

## In Practice

### The Book_Map Session Protocol

Every agent session on a Book_Map project follows a three-phase protocol adapted
for creative work.

**Phase 1: Start (5-10 minutes)**

Before writing a single word of manuscript, the agent reads:

1. **Session handoff.** The exit ticket from the previous session, including
   narrative temperature, dangling threads, and transition hooks.
2. **Voice spec.** `docs/voice-spec.md` -- the full voice specification. Every
   session. Not skimmed. Read. This is the re-calibration that prevents drift.
3. **Relevant character or argument specs.** Only the specs for characters who
   appear in the current unit (fiction) or the argument being advanced
   (nonfiction).
4. **Last 500-1000 words of manuscript.** The actual prose that was last written.
   This is the tuning fork. The agent reads it not for content but for rhythm,
   tone, and cadence. The first words it writes must sound like the continuation
   of these words.

This start protocol is non-negotiable. Skipping it saves five minutes and costs
five pages of voice-inconsistent prose that will need to be rewritten.

**Phase 2: Work (the session body)**

During active drafting or editing, the agent operates within these constraints:

- **Stay within the current editorial stage.** If this is a drafting session,
  draft. Do not line-edit while drafting. If this is a developmental edit
  session, evaluate structure. Do not polish sentences.
- **Reference specs, do not improvise.** When a character decision arises (how
  would she react to this?), check the character spec before inventing. When a
  structural question arises (does this belong in this chapter?), check the
  structure spec. Specs are the author's recorded decisions. Honoring them is
  not mechanical -- it is collaborative.
- **Flag uncertain decisions.** When the agent encounters a choice that the specs
  do not clearly resolve, it marks the decision with a visible flag:
  `<!-- DECISION: [description] -- flagged for author review -->`. It makes its
  best judgment and continues, but the flag ensures the author can review and
  override.

**Phase 3: End (5-10 minutes)**

Before closing the session, the agent updates the session handoff with
book-specific creative fields (described below) and writes the exit ticket
for the completed unit.

### Creative Handoff Fields

The standard session handoff (Chapter 7 of the Context_Map guide) captures task
state. For book projects, the handoff includes additional fields that capture
creative state:

```markdown
## Creative State

### Narrative Temperature
[One of: building | cresting | cooling | reflective | tense | release]
[1-2 sentences explaining the current emotional trajectory]

### Last Written Passage
[Final 200-300 words of the most recently written manuscript text, quoted
verbatim. This is the tuning fork for the next session.]

### Dangling Threads
- [Thread: brief description | Intended resolution: where/when/how]
- [Thread: brief description | Intended resolution: where/when/how]

### Voice Notes
[Any observations about voice during this session: drift detected, deliberate
modulation, new voice pattern that worked well, character voice that needs
attention]

### Transition Hook
[What the opening of the next unit should reference or respond to]
```

**Narrative Temperature** is the most important creative handoff field. It tells
the next session not just what was written but how it *felt*. "Building" means
tension is increasing and the next session should continue the escalation.
"Reflective" means the pace has slowed deliberately and the next session should
not open with an explosion. The one-word label plus the explanatory sentence
give the next agent enough to calibrate.

**Last Written Passage** is included verbatim, not summarized. Summaries lose
rhythm. The next agent needs to hear the actual voice, not a description of it.

**Dangling Threads** include intended resolutions. This prevents the next agent
from resolving a thread prematurely or in a way that contradicts the plan.

### Multi-Agent Patterns

Some book projects use multiple agents in coordinated roles:

**Draft/Edit separation.** One agent drafts. A different agent (or the same agent
in a different session with a different system prompt) edits. This mirrors the
traditional writer/editor separation and prevents the self-editing trap where
the drafter is too close to the work to see its flaws. The editing agent reads
the draft, the voice spec, and the editorial criteria -- but not the drafting
session's handoff, which would bias it toward the drafter's intentions rather
than the reader's experience.

**Specialized voice work.** In novels with multiple point-of-view characters, a
single agent may produce all the prose, but the voice spec for each POV
character creates a de facto specialization. The agent re-reads the relevant
character's voice sample before each POV section, effectively "becoming" that
character for the session.

**Write-forward, review-backward.** The primary workflow moves forward through
the manuscript (drafting the next unit). A secondary workflow moves backward
(reviewing completed units for consistency, continuity, and quality). These
two workflows alternate: draft three units, review the three, draft three more.
The review workflow catches drift before it compounds.

### The Author's Role

The author in an agent-assisted book project serves four functions:

**Creative direction.** The author defines voice, structure, characters, themes,
and argument. These decisions are recorded in specs. The author updates specs
when the creative vision evolves. Specs are not contracts that bind the author --
they are the author's current best articulation of intent.

**Voice arbitration.** When the agent's prose drifts from the intended voice, the
author identifies the drift and provides correction. This correction is specific:
not "this doesn't sound right" but "this passage is too formal -- shorter
sentences, more sentence fragments, drop the semicolons."

**Approval gates.** The author reviews work at stage boundaries: after a chapter
is drafted, after a developmental edit, after a line edit. These gates are where
the author exercises judgment that no spec can fully encode. Approval is binary:
the work passes or it does not. If it does not, the author provides direction
for revision, not a rewrite.

**Answering open questions.** The agent flags decisions it cannot resolve from
specs alone. The author answers these flags, and the answers are incorporated
into the relevant spec for future reference. Over time, the specs become more
complete and the flags become less frequent.

---

## By Book Type

### Fiction

**Character voice across sessions.** Fiction's hardest collaboration challenge
is maintaining distinct character voices when the "writer" changes between
sessions. The countermeasure is the **re-read ritual**: before writing any scene
with a particular POV character, the agent reads 500-1000 words of that
character's best voice sample (identified in the character spec). This is not
efficient. It is effective. The alternative -- trusting memory that does not
exist -- produces voice bleed where all characters start sounding alike.

**Continuity checking.** Fiction accumulates facts: what a character was wearing,
what was said in a previous conversation, the layout of a room. The continuity
bible (`docs/continuity-bible.md`) is the reference, but it is only as good as
its maintenance. Every drafting session should note new continuity-relevant facts
in the exit ticket. Every third session should include a quick continuity
cross-check against the bible.

**The re-read ritual.** At the start of every fiction drafting session:
1. Read the voice spec's prose sample for the current POV character.
2. Read the last 500-1000 words of manuscript.
3. Write one paragraph of warm-up prose (not for the manuscript -- for
   calibration). Discard it.
4. Begin drafting.

Step 3 is unusual but valuable. The warm-up paragraph lets the agent find the
voice before the stakes are real. It costs two minutes and prevents two pages
of off-voice opening.

### Nonfiction

**Argument consistency.** Nonfiction's collaboration challenge is maintaining a
coherent argument across chapters written in different sessions. The
countermeasure is the **premise check**: before drafting any section, the agent
re-reads the chapter's thesis statement (from the chapter plan) and the book's
central argument (from the structure spec). Every section must demonstrably serve
the chapter thesis, and every chapter must demonstrably serve the book's
argument. If a section cannot articulate its relationship to the thesis in one
sentence, it does not belong.

**Consistent epistemic stance.** Nonfiction voice includes how the author
relates to uncertainty: Does the author hedge? State flatly? Acknowledge
counterarguments? This stance must be consistent. The voice spec should include
explicit guidance on epistemic markers: "Use 'evidence suggests' for claims
with moderate support. Use 'research demonstrates' for strong support. Never
use 'it is obvious that' -- nothing is obvious to the reader who is learning."

### Memoir

**Sensitivity of the author-agent relationship.** Memoir is personal. The agent
is writing about the author's life, relationships, traumas, and joys. This
creates a unique dynamic: the author may feel exposed, vulnerable, or protective
in ways that do not arise in fiction or nonfiction. The agent must handle
personal material with care, flagging passages that might be emotionally charged
for the author rather than making assumptions about what the author is
comfortable revealing.

**Voice as identity.** In memoir more than any other form, the voice *is* the
author. A memoir that does not sound like its author has failed at its most
fundamental task. This means the voice spec for memoir must be developed from
extensive samples of the author's natural writing and speech patterns. The
agent's job is to channel, not to improve. If the author's natural voice
includes run-on sentences or colloquial grammar, the agent preserves those
features -- they are not errors, they are voice.

**Emotional pacing in handoffs.** Memoir sessions sometimes involve writing
about difficult experiences. The creative handoff must note the emotional weight
of the material just written so the next session can modulate appropriately. A
session that drafted a scene of loss should not be followed by a session that
opens with breezy humor -- unless that tonal shift is deliberate and planned.

---

*Agent collaboration on a book is not a technical problem with a technical
solution. It is a creative relationship mediated by documents. The documents --
specs, handoffs, exit tickets -- are not bureaucracy. They are the connective
tissue that makes a multi-session, multi-agent manuscript read as if one mind
wrote it.*
