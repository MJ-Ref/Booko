# Chapter 4: Prior Art and Inspiration

<!-- reviewed: 2026-02-13 -->

---

## The Challenge

Every book exists in a conversation with other books. Ignoring that
conversation produces one of two failure modes, and both are fatal.

**Failure mode 1: Accidental reinvention.** The author writes a book that
already exists. Not plagiarism -- genuine ignorance. They spend a year
producing a competent version of an argument that was made better, or a story
that was told more memorably, by someone else. A reader who knows the prior
work will see the new book as derivative. A reader who does not will eventually
discover the predecessor and feel cheated.

**Failure mode 2: Unconscious imitation.** The author is deeply influenced by
a particular book but has not examined the influence consciously. The result
is a pale shadow -- the same structural moves, the same rhetorical habits, the
same voice, slightly diluted. The influence is too strong because it was never
made explicit and therefore never interrogated.

There is a third, subtler problem specific to agent-assisted work: agents draw
on vast training data and can inadvertently converge on the voice, structure,
or arguments of well-known books in the relevant space. Without an explicit
prior art register, neither the agent nor the author has a mechanism for
detecting this convergence.

The remedy is not to read less or avoid influence. The remedy is to make
influence explicit, so it can be used deliberately and departed from
intentionally.

---

## The Principle

Prior art is creative input that must be tracked explicitly. Knowing what your
book is "in conversation with" sharpens every decision -- from voice to
structure to argument to marketing.

For every influence, you must be able to answer two questions: **What do we
learn from this?** and **What do we depart from?** If you cannot answer both,
the influence is unexamined and therefore dangerous.

---

## In Practice

### The Prior Art Register

The prior art register lives at `docs/prior-art.md` and is one of the first
documents created for any project. It is not a bibliography. It is a strategic
document that maps the book's relationship to its influences.

The register contains four categories of entries:

#### 1. Comp Titles

Books that a reader of your book would also read. Books that a bookstore would
shelve nearby. Books that serve the same audience or address the same topic.

For each comp title, document:

```
### [Title] by [Author] ([Year])

**Relationship:** Direct comp / Adjacent comp / Category comp

**What to learn from:**
- [Specific craft or content element this book does well]
- [Specific structural or voice choice worth studying]

**What to depart from:**
- [Where this book falls short or makes choices we reject]
- [How our book differs in approach, audience, or argument]

**Reader expectation:**
- [What a reader of this book will expect from ours]
- [Where we will meet that expectation vs. surprise them]
```

Aim for 3-5 comp titles. Fewer than three suggests insufficient market
awareness. More than seven suggests the book's identity is unclear.

#### 2. Craft Influences

Books, essays, or other works that influenced *how* the book is written, not
*what* it is about. A novel might be influenced by the sentence-level craft of
a writer in a completely different genre. A business book might be influenced
by the narrative structure of a memoir.

```
### [Title] by [Author]

**Craft element borrowed:** [voice, structure, pacing, chapter format, etc.]

**How it manifests in our book:**
- [Specific description of how this influence shapes our work]

**Limits of the influence:**
- [Where we stop following this model and why]
```

#### 3. Content Sources

For nonfiction: the research, data, interviews, and expertise that inform the
book's content. For fiction: the real-world knowledge, settings, and experiences
that ground the story. For memoir: the external records, other people's
accounts, and documentary evidence that corroborate and enrich memory.

```
### [Source description]

**Type:** Research / Interview / Personal experience / Data / Document

**What it provides:**
- [Specific content, evidence, or grounding this source offers]

**Reliability:**
- [How trustworthy is this source? Any caveats?]

**Status:**
- [Secured / Pending / Needs verification]
```

#### 4. Anti-Influences

Books or approaches that the project explicitly rejects. Knowing what you are
*not* writing is as clarifying as knowing what you are.

```
### [Title] by [Author] -- ANTI-INFLUENCE

**What this book represents:**
- [The approach, voice, structure, or argument we are rejecting]

**Why we reject it:**
- [Specific reasons this approach does not serve our book]

**The risk of convergence:**
- [How we might accidentally drift toward this approach]
- [Warning signs to watch for]
```

Anti-influences are particularly valuable for agent work. An agent instructed
"do not write like [specific book]" can check its output for convergence with
that book's known characteristics.

### How Agents Use the Prior Art Register

The register serves agents in several concrete ways:

**Voice calibration.** When the voice spec says "accessible but authoritative,"
the comp titles and craft influences show what that looks like in practice.
The agent can read passages from the influences (if provided) to calibrate its
output.

**Structural reference.** When the structure spec says "braided narrative,"
the craft influences show what braided narrative looks like when done well.
The agent has concrete models, not just abstract descriptions.

**Convergence checking.** During drafting or editing, the agent can check
whether the prose is drifting toward any comp title or anti-influence. If a
passage reads like it could have been lifted from a well-known comp title,
that is a signal to revise for distinctiveness.

**Audience calibration.** The comp titles define an audience. A reader who
liked those books is the reader we are writing for. The agent can use this
to calibrate complexity, assumed knowledge, and tone.

### Research and Source Tracking for Nonfiction

Nonfiction books live or die on their sources. The prior art register's
content sources section is the starting point, but nonfiction projects need
additional source discipline:

**Source integrity protocol.** For every factual claim in the manuscript, the
source must be traceable. This does not mean every sentence needs a footnote.
It means that if challenged, the author can produce the source for any factual
assertion. The agent should track sources at the chapter level, noting which
claims come from which sources.

**Primary vs. secondary sources.** Track whether each source is primary
(original research, direct interviews, firsthand data) or secondary (another
author's interpretation, summary, or analysis). A book built entirely on
secondary sources is a book that adds no new knowledge to the world.

**The "one source" problem.** If a critical claim rests on a single source,
flag it. Important claims need corroboration. An agent drafting a chapter
should note when a claim is single-sourced so the author can decide whether
to seek additional support.

**Currency check.** For rapidly evolving fields, sources date quickly. The
register should note the publication date of each source and flag any that
may be outdated by publication time.

### The Influence Audit

Twice during a book project -- once after the first complete draft and once
after developmental editing -- conduct an influence audit:

1. Re-read the prior art register.
2. For each comp title and craft influence, honestly assess: is the manuscript
   too close? Has it absorbed the influence without transforming it?
3. For each anti-influence, honestly assess: has the manuscript drifted toward
   the rejected approach?
4. Read the opening pages of 2-3 comp titles, then immediately read the
   opening pages of the manuscript. Does the manuscript have a distinct
   identity? Could a reader tell them apart?
5. Document findings and any needed revisions.

The influence audit is uncomfortable because it requires honesty about
derivative tendencies. It is also one of the most valuable quality checks in
the entire system.

---

## By Book Type

### Fiction

**Genre conventions as prior art.** Every genre has conventions -- expected
beats, character types, narrative patterns, reader promises. The prior art
register should document the relevant genre conventions and the book's
relationship to each: which conventions it honors (meeting reader expectations),
which it subverts (surprising readers), and which it ignores (departing from
genre norms).

**Trope awareness.** Fiction agents can inadvertently reproduce common tropes
without the author's awareness. The register should list the tropes most
relevant to the book's genre and note which are being used intentionally,
which are being avoided, and which need to be handled with particular care to
avoid cliche.

```
Trope: The mentor who dies to motivate the protagonist
Status: Using, but the death occurs off-page and the protagonist's
reaction is complicated -- not simple grief but guilt and relief.
```

**Worldbuilding influences.** For speculative fiction, track the influences on
worldbuilding separately from narrative influences. A fantasy novel might be
influenced by Tolkien's worldbuilding depth but Ursula K. Le Guin's narrative
approach. Making these distinct prevents one influence from dominating.

### Nonfiction

**Source integrity.** Nonfiction prior art management is as much about
intellectual honesty as craft. The register must clearly distinguish between
ideas originated by the author and ideas built upon others' work. Failing to
make this distinction is not just a craft problem -- it is an ethics problem.

**Citation discipline.** The register informs citation practice. Every comp
title and content source should be cited appropriately in the manuscript --
whether through formal citations, acknowledgments, or in-text attribution.
The register tracks what needs to be cited and how.

**The "what's new" test.** For each comp title, the register should be able
to answer: what does our book say that this book does not? If the answer for
every comp title is "nothing," the book does not have a reason to exist.

**Evolving landscape.** Nonfiction fields change. A comp title from two years
ago may have been overtaken by new research. The register should be treated as
a living document, updated as new relevant works are published during the
writing process.

### Memoir

**Ethics of writing about real people.** Memoir prior art includes not just
other memoirs but the ethical frameworks for writing about real, living people.
The register should document:

- Who appears in the memoir as a significant character
- What their likely reaction to their portrayal would be
- Whether they have been consulted or informed
- What obligations (legal, ethical, relational) the author has to them
- How other memoirists have handled similar situations (with specific examples)

**The truth problem.** Memoir comp titles demonstrate a range of approaches to
the truth-craft tension. Some memoirists hew strictly to verifiable fact.
Others acknowledge that memory reconstructs. The register should document where
this book sits on that spectrum and which prior memoirists model the chosen
approach.

**Emotional territory.** Some emotional territories (grief, addiction, abuse,
illness) have been extensively explored in memoir. The register should
acknowledge the existing work and articulate how this book's treatment of
similar territory is distinct -- not "better" necessarily, but specific to
this author's experience and perspective.

**Sensitivity and harm.** The register should flag any content that could cause
harm to identifiable people and document the author's decisions about how to
handle it. Prior examples of how other memoirists navigated similar situations
provide valuable precedent, though not prescription.
