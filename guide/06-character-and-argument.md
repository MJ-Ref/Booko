# Chapter 6: Character and Argument

<!-- reviewed: 2026-02-13 -->

---

## The Challenge

Agent-written characters tend toward archetypes. The brave protagonist. The
wise mentor. The loyal friend. The cunning antagonist. Each character has
traits, and those traits remain stable from first appearance to last. The
characters are recognizable, consistent, and flat.

Agent-written arguments tend toward assertion and repetition. The thesis is
stated in the introduction. Each chapter supports it with evidence. The
conclusion restates it. The argument is clear, well-organized, and static. It
does not *build* -- it merely *accumulates*.

Both failures share a root cause: the agent treats characters and arguments as
*states* rather than *trajectories*. A character is defined by a fixed set of
attributes. An argument is defined by a fixed claim. Neither changes in a way
that feels organic and earned.

The reader's experience of a great character is the experience of watching
someone change -- sometimes for the better, sometimes for the worse, always
in response to what happens to them. The reader's experience of a great
argument is the experience of having their understanding transformed -- not
being told a conclusion, but being led through a process of discovery that
makes the conclusion feel inevitable.

Without explicit frameworks for managing these trajectories, agents default to
the static version.

---

## The Principle

Characters and arguments are trajectories, not states. They are defined not by
what they *are* at any moment, but by how they *change* across the book.

A character's arc is the distance between who they are on page one and who
they are on the last page, measured in the specific ways they have been
changed by the story's events. An argument's arc is the distance between the
reader's understanding at the beginning and their understanding at the end,
measured in the specific shifts in thinking the book produces.

Both arcs must be planned, tracked, and verified across the full length of
the manuscript.

---

## In Practice

### Character Development Framework

#### The Character Spec Document

Each significant character gets a spec document in `docs/characters/`. The
spec is not a character sheet (height, hair color, birthday). It is a
functional document that gives agents what they need to write the character
consistently and dynamically.

**Core elements of a character spec:**

```
# Character: [Name]

## Role
[Protagonist / Antagonist / Supporting / etc.]
[Function in the story: what does this character DO for the narrative?]

## Traits
- [3-5 defining traits, each with a concrete behavioral expression]
- Example: "Loyal -- will sacrifice personal advantage for people she
  considers family. This loyalty is tested when family members betray
  her trust."

## Contradiction
[The internal tension that makes the character interesting. Every
compelling character contains a contradiction.]
- Example: "Fiercely independent but terrified of being alone."

## Desire (What they want)
[The conscious, stated goal. What the character would say they are
trying to achieve.]

## Need (What they actually need)
[The unconscious, deeper requirement for growth. Often in tension with
desire. The character may not get what they want, but the story's
resolution depends on whether they get what they need.]

## Arc
[How the character changes from beginning to end.]
- Starting state: [Who they are at the beginning]
- Catalysts: [What events force change, and in what order]
- Midpoint shift: [How the character is different at the midpoint]
- Crisis choice: [The decision that defines the arc -- what do they
  choose when desire and need conflict?]
- Ending state: [Who they are at the end]

## Voice
[How this character speaks -- diction, syntax, verbal habits, topics
they avoid, topics they return to obsessively. Cross-reference with
voice spec if this is a POV character.]

## Relationships
[Key relationships and how they change. Format: Character -> Character:
nature of relationship, how it evolves.]
```

#### Character Consistency Check

After drafting scenes with a character, verify:

1. **Trait consistency.** Is the character behaving in accordance with their
   defined traits? If they deviate, is the deviation motivated by story events
   or is it drift?
2. **Arc progress.** Is the character at the right point in their arc for this
   part of the book? Are they changing too fast (unearned) or too slow (static)?
3. **Voice distinctiveness.** If you cover the name and read the dialogue, can
   you tell who is speaking? If not, the character's voice needs sharpening.
4. **Contradiction activation.** Is the character's central contradiction
   present in their behavior, or has the agent flattened them into one side of
   it?

#### Voice Distinctiveness

Every character who speaks should sound different from every other character.
This is one of the most common failures in agent-written fiction.

Techniques for creating distinct character voices:

- **Vocabulary range.** One character uses simple words; another reaches for
  precision. One swears; another never does.
- **Sentence structure.** One character speaks in fragments. Another constructs
  elaborate sentences. One character qualifies everything; another makes
  declarations.
- **Topics and evasions.** Characters reveal themselves by what they talk about
  and what they avoid talking about. One character always brings conversations
  back to money. Another changes the subject whenever feelings are mentioned.
- **Rhythm.** One character speaks in rapid bursts. Another takes their time.
  One interrupts. Another waits.

Document these patterns in the character spec. Agents should consult them
before writing any scene with significant dialogue.

#### Relationship Mapping

Characters do not exist in isolation. Their relationships are as important as
their individual traits -- and relationships have arcs too.

The relationship map documents:

- All significant character relationships
- The initial state of each relationship
- The forces that change each relationship
- Key turning points
- The final state of each relationship

This can live in a dedicated `docs/relationships.md` or within individual
character specs.

### Argument Development Framework

#### The Thesis Document

Nonfiction books need a thesis document at `docs/argument.md`. Like the
character spec, this is a functional document, not an academic exercise.

```
# Argument Map

## Central Claim
[One sentence. What is this book arguing?]

## Why It Matters
[Why should the reader care? What changes if the claim is true?]

## Premises
[The building blocks of the argument. Each premise is a claim that
must be established before the central claim can be accepted.]
1. [Premise 1 -- and which chapter(s) establish it]
2. [Premise 2 -- and which chapter(s) establish it]
3. [Premise 3 -- and which chapter(s) establish it]

## Evidence Types
[What kinds of evidence does this book use?]
- Research data
- Case studies
- Expert testimony
- Historical examples
- Personal experience
- Logical reasoning

## Counterarguments
[The strongest objections to the central claim. For each:]
- [Counterargument 1]
  - Strength: [How strong is this objection, honestly?]
  - Response: [How does the book address it?]
  - Chapter: [Where is it addressed?]

## The Reader's Journey
[How does the reader's understanding change chapter by chapter?]
- Ch 1: Reader believes [X]
- Ch 2: Reader begins to question [X] because [evidence]
- Ch 3: Reader sees [alternative framework]
- ...
- Final chapter: Reader understands [central claim] and can [act on it]
```

#### Argument Arc

The argument arc describes how the reader's understanding builds across the
book. This is the nonfiction equivalent of a character arc.

A strong argument arc has these properties:

- **Progressive complexity.** Early chapters establish simple, accessible
  ideas. Later chapters build on them to reach more nuanced conclusions. The
  reader never encounters an idea without the prerequisites to understand it.

- **Earned conclusions.** The central claim appears at the end of the argument,
  not the beginning. If you state your thesis in chapter one and spend the rest
  of the book supporting it, you are not building understanding -- you are
  bludgeoning.

- **The turn.** At some point, the argument should challenge the reader's
  assumptions in a way that reframes everything that came before. This is the
  nonfiction equivalent of a plot twist. It is the moment when the reader
  thinks, "I had not considered it that way."

- **Concrete before abstract.** Show the specific case before extracting the
  general principle. The reader should see the evidence before hearing the
  conclusion. This builds trust and engagement.

#### Evidence Management

For each chapter, track:

- What claims are made
- What evidence supports each claim
- What type of evidence it is (see evidence types above)
- Whether the evidence is primary or secondary
- Whether additional evidence is needed

Agents should flag chapters where claims significantly outweigh evidence.
Assertion without evidence is not argument -- it is opinion.

#### Steel-Man Discipline

The strongest nonfiction engages counterarguments at their best, not their
weakest. The steel-man discipline requires:

1. State the counterargument as its strongest proponent would state it.
2. Acknowledge what is valid in the counterargument.
3. Explain specifically where and why it falls short.
4. Show how the book's claim accounts for what the counterargument gets right
   while avoiding what it gets wrong.

Agents default to straw-manning: presenting counterarguments in their weakest
form and dismissing them easily. The steel-man discipline in the thesis
document guards against this.

### Integration with the Plan System

Character and argument development must be tracked in the plan system. Each
plan that involves drafting or editing should reference:

- Which characters appear and where they are in their arcs
- Which argument premises are being established or extended
- What the reader should understand by the end of the planned section

This integration ensures that character and argument arcs are not just planned
but actively managed session by session.

---

## By Book Type

### Fiction

**Protagonist and antagonist arcs.** The protagonist's arc is the spine of
the story. The antagonist's arc is its shadow. In the strongest fiction, both
characters change -- and their changes are related. The antagonist represents
a path the protagonist could have taken (or did take, and must turn back
from).

**Ensemble cast.** In multi-character fiction, not every character needs a
full arc. Secondary characters can have partial arcs (they change in one
dimension) or flat arcs (they do not change but they catalyze change in
others). The character spec should document the arc type for each character.

**Character-driven vs. plot-driven.** Character-driven fiction is structured
around the protagonist's internal changes; events happen because of who the
characters are. Plot-driven fiction is structured around external events;
characters change because of what happens. Most fiction is a blend, but the
structure spec should identify which is primary, because it determines how
scenes are constructed.

**The character-in-scene test.** For every scene, the agent should be able to
answer: How is [character] different at the end of this scene than at the
beginning? If the answer is "they are not," the scene may not be earning its
place.

### Nonfiction

**Author as guide.** In nonfiction, the author is a character -- the guide
who leads the reader through the argument. The author-character needs the
same thoughtful development as a fictional character: a consistent voice,
credibility established through specificity and honesty, vulnerability at
strategic moments, authority maintained through expertise.

**Building trust.** The nonfiction author must earn the reader's trust before
asking them to accept controversial claims. The argument arc should front-load
trust-building: accessible ideas, strong evidence, honest acknowledgment of
complexity. Once trust is established, the reader will follow the author into
more challenging territory.

**Argument as "character."** Think of the argument itself as having an arc.
It begins simple and incomplete. It encounters complications (counterarguments,
nuances, exceptions). It grows more sophisticated in response. By the end, it
is richer and more resilient than it was at the beginning. This arc mirrors
the reader's understanding and makes the argument feel alive rather than
predetermined.

### Memoir

**Author-as-character.** The memoirist is both the author and the
protagonist. This dual role creates unique challenges. The author knows how
the story ends; the character does not. The author has perspective; the
character is in the middle of events. The character spec for a memoir
protagonist must document both the then-self (the character living through
events) and the now-self (the author making meaning of them).

**Distance between past and present self.** The space between who the author
was and who the author is now *is* the memoir. It is the source of insight,
humor, compassion, and narrative tension. The character spec should make this
distance explicit:

```
Then-self: 22 years old. Certain she knows everything. Terrified she
knows nothing. Making decisions based on what looks impressive rather
than what feels true.

Now-self: 45 years old. Has learned that not knowing is where the
interesting stuff lives. Can see the 22-year-old's mistakes with
compassion rather than judgment.

The distance: 23 years and a fundamental shift from performing
competence to embracing uncertainty.
```

**Supporting characters in memoir.** Real people did not audition for their
roles in someone else's book. They are more complex than any characterization
can capture. The memoirist must be honest about the limits of their
portrayal -- they are writing their *experience* of these people, not
definitive accounts of who these people are. Character specs for memoir
supporting characters should note what the author cannot know about them and
where the portrayal is necessarily partial.
