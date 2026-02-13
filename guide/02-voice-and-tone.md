# Chapter 2: Voice and Tone

<!-- reviewed: 2026-02-13 -->

---

## The Challenge

Voice drift is the silent killer of agent-assisted books.

Without an explicit voice specification, every session reinvents voice from
scratch. The agent draws on its training data -- an average of millions of
texts -- and produces something fluent, competent, and indistinguishable from
any other fluent, competent prose. The result is not bad writing. It is
no-one's writing.

The problem is compounded by the way authors experience voice. Authors "know it
when they see it." They can immediately tell whether a paragraph sounds like
their book or does not. But they struggle to articulate *why*. When asked to
describe their voice, they reach for vague terms: "warm," "conversational,"
"literary." These terms are too imprecise to constrain an agent. "Warm" means
nothing until you specify: warm through diction (simple words, direct address)?
Warm through syntax (flowing sentences, few interruptions)? Warm through
content (personal anecdotes, vulnerability)? Warm through all three, and in
what proportion?

The drift is subtle. In any single session, the agent produces prose that seems
fine. But across sessions, without a stable reference point, the voice migrates.
A formal passage lowers the register. A casual passage raises it. Character
dialogue bleeds into narration. Academic precision creeps into conversational
prose. By the time someone reads the full manuscript, the voice inconsistency
is glaring -- but no single paragraph is the obvious culprit.

---

## The Principle

Voice is not a feeling. Voice is a set of concrete, documentable choices:
diction, syntax, rhythm, perspective, emotional register. A voice specification
captures these choices in enough detail that an agent can verify compliance --
checking new prose against the spec the way a developer checks code against a
style guide.

The voice spec is the most important document in `docs/`. If you create only
one craft document for your project, make it the voice spec.

---

## In Practice

### The Voice Spec Document

The voice spec lives at `docs/voice-spec.md` and contains the following
sections:

#### 1. Diction Level

Where does the vocabulary sit on the spectrum from plain to elevated?

Specify with examples, not just labels:

```
Diction: Accessible but precise.
- Prefer "use" over "utilize," "start" over "commence," "enough" over
  "sufficient."
- Technical terms are allowed when they earn their place (they say something
  no plain word says). Define on first use.
- No jargon for jargon's sake. If an insider term can be replaced by a
  common word without losing meaning, replace it.
```

#### 2. Sentence Rhythm

What does the prose sound like when read aloud? Short and punchy? Long and
flowing? Varied?

Specify the dominant pattern and the range:

```
Rhythm: Predominantly short-to-medium sentences (8-20 words) with
occasional longer sentences (25-35 words) for elaboration. Very short
sentences (under 6 words) used for emphasis, no more than once per
paragraph. Sentence fragments allowed sparingly for impact.
```

#### 3. Perspective and Distance

Who is speaking, and how close are they to the material?

For nonfiction, this means: Does the author use "I"? "We"? Direct address
("you")? Impersonal constructions? How much personal experience appears?

For fiction, this means: What point of view? How close is the narration to
the character's thoughts? Does the narrator editorialize?

```
Perspective: First person ("I") for personal experience and opinions.
Direct address ("you") for practical advice. Never "we" (false
togetherness). Close to the material -- the author has done this, not
merely studied it.
```

#### 4. Emotional Register

How much emotion is on the surface? What kind?

```
Register: Controlled intensity. The writing cares about its subject but
does not plead for the reader's emotions. Moments of genuine feeling are
earned through specificity, not adjectives. No exclamation points outside
of dialogue. Humor is dry, infrequent, and never self-deprecating.
```

#### 5. Vocabulary Boundaries

What words, phrases, or constructions are off-limits?

This is often the most useful section. Exclusions are easier to verify than
inclusions.

```
Banned:
- "Journey" (as metaphor for any process)
- "Unlock" (as metaphor for enabling)
- "Dive deep" / "deep dive"
- "In today's world" / "In this day and age"
- "It goes without saying" (then don't say it)
- Rhetorical questions as paragraph openers
- Starting sentences with "So," as a conversational filler
- "Imagine" as a section opener
```

#### 6. Rhetorical Habits

What recurring structural moves define this voice?

```
Habits:
- Lead with the concrete, follow with the abstract. Show the specific
  case first, then extract the principle.
- Use the "Not X, but Y" construction for precision: "Not a rule, but a
  tendency." "Not wrong, but incomplete."
- End sections on a forward-looking note, not a summary.
- Prefer active constructions. Passive voice only when the actor is
  genuinely unknown or irrelevant.
```

### Voice Discovery Process

Most authors cannot produce a voice spec from scratch. The discovery process
extracts it from existing material.

**Method 1: Extract from samples.** If the author has existing writing (blog
posts, articles, earlier books, even long emails), analyze 3-5 representative
pieces. Identify the consistent choices across them. Document those choices in
spec format. Present to the author for confirmation and refinement.

**Method 2: Extract from conversation.** Have a long, free-ranging conversation
with the author about their book. Record how they *talk* about it. The
conversational voice -- stripped of ums and restarts but preserving diction,
rhythm, and emotional register -- is often closer to the author's natural
written voice than they realize.

**Method 3: Extract from a prototype chapter.** Write a sample chapter in three
distinctly different voices. Have the author react: which feels closest? What
is wrong with each? Iterate. This is slower but produces a spec that the
author has viscerally validated.

**Method 4: Combine approaches.** The strongest specs come from analyzing
existing samples, then validating through a prototype chapter, then refining
through conversation about what works and what does not.

### Voice Sample Library

The voice spec includes 3-5 exemplar passages -- either from the author's
existing work or from approved prototype chapters. These passages are the
"gold standard" for voice in this project.

Each sample should be 150-300 words and should demonstrate the voice under
different conditions:

- **Expository passage** -- the voice delivering information
- **Narrative passage** -- the voice telling a story or describing events
- **Emotional passage** -- the voice at its most intense or vulnerable
- **Technical passage** -- the voice handling complex or specialized material
- **Transitional passage** -- the voice moving between ideas or sections

Agents should compare their output against these samples regularly, especially
at the beginning of a session and when shifting between modes (e.g., from
exposition to narrative).

### Voice Verification

After drafting, check new prose against the spec:

1. **Diction check.** Read for vocabulary level. Flag any words that violate
   the diction spec (too formal, too casual, banned terms).
2. **Rhythm check.** Read aloud (or measure sentence lengths). Does the rhythm
   match the spec? Are there long stretches of uniform sentence length?
3. **Register check.** Is the emotional temperature appropriate? Has the prose
   drifted toward melodrama or toward clinical detachment?
4. **Habit check.** Are the rhetorical habits present? Are any anti-habits
   (banned constructions) present?
5. **Sample comparison.** Read the new prose immediately after reading a voice
   sample. Does it feel like the same writer? If not, identify the divergence.

### Tone Modulation Within Fixed Voice

Voice is constant. Tone varies.

A voice is like a musical instrument -- it has a fixed timbre. Tone is what
the instrument plays -- it can be somber, energetic, reflective, urgent. The
voice spec defines the instrument. Individual scenes, chapters, and passages
play different tones on that instrument.

The spec should document the range of tones the voice can reach:

```
Tone range:
- Reflective (for memoir passages, lessons learned)
- Urgent (for calls to action, high-stakes decisions)
- Analytical (for breaking down evidence, explaining mechanisms)
- Wry (for observing absurdity, light moments)

The voice does NOT do:
- Sentimental
- Preachy
- Breathless/hyperbolic
```

### Voice Drift Indicators

Watch for these signals that voice is drifting:

- **Vocabulary inflation.** Words getting longer and more Latinate over time.
- **Sentence bloat.** Average sentence length creeping up.
- **Register creep.** The emotional temperature rising (more adjectives, more
  intensifiers) or falling (more hedging, more passive voice).
- **Loss of habits.** The characteristic rhetorical moves appearing less
  frequently.
- **Homogenization.** All passages starting to sound the same regardless of
  content type (exposition sounds like narration sounds like argument).
- **Generic substitution.** Distinctive phrases being replaced by common ones.

When drift is detected, the remedy is to re-read the voice spec and samples,
identify the specific divergence, and revise. Do not just "try to sound more
like the voice." Identify the concrete dimension that has drifted and correct
it.

---

## By Book Type

### Fiction

Fiction voice is layered. The voice spec must address multiple levels:

**Narrator voice.** The voice that tells the story when no character is
speaking. In first person, this *is* a character voice. In third person, it
is distinct from any character. In close third, it is influenced by the
focal character but not identical.

**Character voices in dialogue.** Each significant character should have
documented speech patterns: vocabulary, sentence length, verbal tics,
education level, regional markers. These go in individual character docs
(`docs/characters/`) with a summary referenced in the voice spec.

**Character voices in interiority.** In close third or first person, the
character's thoughts color the narration. The voice spec should document how
this coloring works -- which character traits bleed into the narrative voice
and which do not.

**Multi-POV considerations.** If the book uses multiple point-of-view
characters, each focal section needs a documented voice shift. The shifts
should be significant enough for the reader to register, subtle enough to
feel like the same book.

**Dialogue vs. narrative register.** Document the gap between how characters
speak and how the narrator narrates. A literary novel may have a significant
gap. A first-person thriller may have almost none.

### Nonfiction

**Authority voice.** Nonfiction authors must sound like they know what they
are talking about. Document how authority is established -- through credential
references, through specificity of examples, through confident diction, through
acknowledging complexity.

**Formality/accessibility tradeoff.** Most nonfiction books need to be
authoritative without being academic. The voice spec should explicitly position
the book on this spectrum and provide examples of how to handle the tension.

```
This book sounds like a smart friend who happens to be an expert, not like
a professor lecturing. Authoritative through specificity and experience,
not through jargon or formal diction.
```

**Consistent audience address.** Nonfiction voice must maintain a stable
relationship with the reader. If the book starts by treating the reader as a
peer and shifts to treating them as a student, the voice has drifted.

### Memoir

**Now-voice vs. then-voice.** Memoir has two temporal layers: the voice of the
person writing now (reflective, with distance and understanding) and the voice
of the person who lived through the events (immediate, possibly confused or
naive). The spec must document both and define how they interact.

```
Now-voice: Reflective, occasional dry humor, sees patterns the younger
self could not. Uses present tense for reflection.

Then-voice: Present tense for immediacy. Shorter sentences. Limited
vocabulary reflecting the age/state of the narrator at the time. Does
not know what happens next.
```

**The distance dial.** Memoir voice modulates distance -- sometimes close to
the events (sensory detail, present tense, no editorializing), sometimes
pulled back (reflection, analysis, meaning-making). The spec should document
when each distance is appropriate and how transitions between them work.

### Genre Conventions

Every genre carries voice expectations. Romance readers expect emotional
interiority. Thriller readers expect terse, propulsive prose. Business book
readers expect confident, action-oriented language. Literary fiction readers
expect linguistic surprise.

The voice spec should acknowledge genre expectations and explicitly document
where this book conforms to them and where it departs. Departures should be
intentional and justified, not accidental.
