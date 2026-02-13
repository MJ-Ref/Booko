# Fact Model — Claim and Citation Framework

<!-- reviewed: 2026-02-13 -->

> **Primarily for nonfiction.** If this is a fiction project, this file is optional.
> For memoir, use selectively for verifiable claims (dates, public events, statistics).
>
> This document defines how factual claims are categorized, tagged, sourced, and verified
> in the manuscript. Every claim that could be challenged must be traceable to a source.

---

## Claim Categories

| Category            | Description                                          | Citation Required? | Example                                    |
|---------------------|------------------------------------------------------|--------------------|--------------------------------------------|
| **Statistical**     | Quantitative claims: numbers, percentages, rates     | Yes — primary source | "42% of respondents preferred X."         |
| **Historical**      | Dates, events, sequences from the historical record  | Yes — at least one scholarly or primary source | "The treaty was signed in 1648." |
| **Scientific**      | Claims about how the natural world works              | Yes — peer-reviewed source preferred | "Neurons communicate via synapses." |
| **Anecdotal**       | Stories, examples, personal observations              | Situational — verify names, dates, and public facts | "When I visited the factory in 2019..." |
| **Expert Opinion**  | Attributed viewpoints from named authorities          | Yes — direct quote or paraphrase with attribution | "As Dr. Smith argues, ..." |
| **Common Knowledge**| Widely accepted facts not requiring citation          | No                 | "Water boils at 100 degrees Celsius at sea level." |

---

## Citation Requirements

| Category            | Adequate Source                                      | Insufficient Source                          |
|---------------------|------------------------------------------------------|----------------------------------------------|
| Statistical         | Primary data, government report, peer-reviewed paper | Blog post, unsourced infographic             |
| Historical          | Scholarly work, primary document, reputable encyclopedia | Wikipedia alone (use as starting point only) |
| Scientific          | Peer-reviewed journal, major institutional publication | Press release, pop-science summary alone     |
| Anecdotal           | Author's firsthand experience or named interviewee   | "I heard that..." with no verifiable detail  |
| Expert Opinion      | Published work, recorded interview, direct correspondence | Unnamed "experts say"                     |
| Common Knowledge    | No citation needed                                   | N/A                                          |

---

## Citation Format

### Inline

Use the project's chosen citation style (see [STYLE_SHEET.md](STYLE_SHEET.md) for style guide selection).

Inline markers in the manuscript draft:

```markdown
The failure rate exceeded 30%.<!-- claim: statistical | source: SRC-003 -->
```

### Bibliography Entry

Each source in the Source Register (below) should have a full bibliographic entry in the format required by the chosen style guide.

---

## Claim Tagging Convention

All factual claims in the manuscript must be tagged with an HTML comment immediately following the claim:

```markdown
<!-- claim: [category] | source: [SRC-ID] -->
```

**Examples:**

```markdown
By 1965, enrollment had tripled.<!-- claim: historical | source: SRC-001 -->

Recent studies suggest a 15% improvement.<!-- claim: scientific | source: SRC-004, SRC-007 -->
```

For claims not yet sourced, use:

```markdown
<!-- citation-needed -->
```

For claims where the source exists but has not been verified:

```markdown
<!-- claim: [category] | source: [SRC-ID] | status: unverified -->
```

---

## Verification Workflow

1. **During drafting:** Tag every non-common-knowledge claim with `<!-- claim: ... -->` or `<!-- citation-needed -->`.
2. **After drafting:** Run a script to extract all claim tags and generate a verification checklist.
3. **Fact-check pass:** For each claim, verify:
   - The source exists and says what is attributed to it.
   - The source meets the adequacy threshold for its category.
   - Numbers, dates, and names are accurate.
4. **Mark verified:** Update the tag to include `| status: verified` or update the Source Register.
5. **Escalate issues:** Unverifiable claims are flagged and added to the Editorial Debt Register.

<!-- See FACT_CHECK.md workflow for the full step-by-step fact-checking process. -->

---

## Unverified Claim Markers

| Marker                        | Meaning                                       |
|-------------------------------|-----------------------------------------------|
| `<!-- citation-needed -->`    | No source identified yet                      |
| `<!-- status: unverified -->`  | Source identified but not confirmed           |
| `<!-- status: disputed -->`    | Source found but claim accuracy is in question|
| `<!-- status: verified -->`    | Source confirmed and claim is accurate        |

Automated scripts should flag any `citation-needed` or `unverified` markers remaining at the revision stage.

---

## Source Register

<!-- Master list of all sources referenced in the manuscript. -->

| ID      | Source                                             | Type        | Reliability  | Notes                          |
|---------|----------------------------------------------------|-------------|--------------|--------------------------------|
| SRC-001 | [Full bibliographic entry]                         | [Book / Paper / Report / Interview] | [High / Medium / Low] | [Any caveats] |
| SRC-002 | [Full bibliographic entry]                         | [Type]      | [Reliability]|                                |
| SRC-003 | [Full bibliographic entry]                         | [Type]      | [Reliability]|                                |

<!-- Add sources as they are identified. Keep IDs sequential. -->

---

## Related Documents

| Document                              | Purpose                                  |
|---------------------------------------|------------------------------------------|
| [STYLE_SHEET.md](STYLE_SHEET.md)     | Citation style selection                 |
| [GLOSSARY.md](GLOSSARY.md)           | Term definitions                         |
| [OVERVIEW.md](OVERVIEW.md)           | Scope — defines what claims matter       |
| Editorial Debt Register               | Tracks unresolved fact-check issues      |
