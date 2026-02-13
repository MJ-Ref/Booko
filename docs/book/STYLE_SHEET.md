# Style Sheet

<!-- reviewed: 2026-02-13 -->

> This file defines the spelling, formatting, and usage conventions for the manuscript.
> All writers and agents must conform to these rules. Automated lint scripts reference
> this file to flag violations. Changes to established terms require an Editorial
> Decision Record (EDR).

---

## Canonical Terms

| Term              | Use         | Never Use                    | Notes                          |
|-------------------|-------------|------------------------------|--------------------------------|
| email             | email       | e-mail, Email (mid-sentence) | Lowercase unless starting a sentence |
| internet          | internet    | Internet                     | Lowercase per AP 2016+         |
| dataset           | dataset     | data set, data-set           |                                |
| decision-making   | decision-making | decision making, decisionmaking | Always hyphenated          |
| [Add terms here]  |             |                              |                                |

<!-- Add project-specific terms as they arise. Sort alphabetically. -->

---

## Spelling and Capitalization

| Rule                          | Convention                                   |
|-------------------------------|----------------------------------------------|
| **Dialect**                   | [American English / British English]         |
| **Dictionary of Record**      | [e.g., Merriam-Webster / Oxford]             |
| **Title Capitalization**      | [Title Case for chapter headings / Sentence case for subheadings] |
| **Proper Nouns**              | Capitalize. See Canonical Terms for edge cases. |
| **Acronyms**                  | Spell out on first use, then acronym: "artificial intelligence (AI)" |
| **Compound Modifiers**        | Hyphenate before a noun: "well-known author." No hyphen after: "the author is well known." |

---

## Formatting Conventions

### Headings

- **H1 (`#`):** Book title and part titles only.
- **H2 (`##`):** Chapter titles.
- **H3 (`###`):** Major sections within a chapter.
- **H4 (`####`):** Subsections. Avoid H5+ depth.

### Emphasis

- **Bold:** Key terms on first definition. Sparingly elsewhere.
- *Italic:* Book titles, foreign words, light emphasis.
- `Code font:` Technical terms, commands, file names.
- ~~Strikethrough:~~ Never in published text (revision tracking only).

### Callouts and Block Quotes

```markdown
> **Note:** Use for supplementary information the reader may skip.

> **Warning:** Use for critical caveats or common mistakes.

> [Block quotes for quoted material — always cite source.]
```

### Lists

- Use bullet lists for unordered items (3+ items).
- Use numbered lists only when order matters.
- Parallel structure required: all items start with the same part of speech.

---

## Numbers and Dates

| Rule                          | Convention                                   |
|-------------------------------|----------------------------------------------|
| **Spell out**                 | One through ninety-nine                      |
| **Use numerals**              | 100 and above, measurements, statistics      |
| **Percentages**               | [e.g., "12 percent" / "12%"]                |
| **Dates**                     | [e.g., February 13, 2026 / 13 February 2026]|
| **Times**                     | [e.g., 3:00 p.m. / 15:00]                   |
| **Decades**                   | the 1990s (no apostrophe)                    |
| **Ranges**                    | Use en dash: pages 12-45, 2020-2025          |

---

## Punctuation Rules

| Rule                          | Convention                                   |
|-------------------------------|----------------------------------------------|
| **Serial Comma**              | [Yes — always / No — AP style]               |
| **Em Dash**                   | No spaces: "word---word" renders as word—word |
| **En Dash**                   | Ranges and compound modifiers: "pages 3--5"  |
| **Ellipsis**                  | Three spaced dots: ". . ." or single glyph "..." — [choose one] |
| **Quotation Marks**           | [Double for speech, single for quotes-within-quotes / British convention] |
| **Comma After Introductory Clause** | Always.                               |
| **Oxford Spelling of -ize**   | [N/A for AmE / specify for BrE]             |

---

## Citation Style

<!-- Primarily for nonfiction. Delete or mark N/A for fiction. -->

| Aspect               | Convention                                    |
|-----------------------|-----------------------------------------------|
| **Style Guide**       | [Chicago / APA / MLA / Other]                |
| **Inline Citations**  | [Footnote / Endnote / Parenthetical]         |
| **Bibliography**      | [Yes — at end of book / Per-chapter / None]  |
| **URL Format**        | [Include access date? Shorten?]              |
| **See also**          | [FACT_MODEL.md](FACT_MODEL.md) for claim tagging |

---

## Forbidden Patterns

The following patterns will be flagged by automated lint scripts:

| Pattern                    | Reason                                       | Fix                             |
|----------------------------|----------------------------------------------|---------------------------------|
| "very" + adjective         | Weak intensifier                             | Choose a stronger adjective     |
| "in order to"              | Verbose                                      | Replace with "to"               |
| "it is important to note"  | Throat-clearing filler                       | Delete or start with the point  |
| "utilize"                  | Pretentious synonym for "use"                | Replace with "use"              |
| "basically"                | Filler word                                  | Delete                          |
| Passive voice (flagged)    | Not banned, but flagged for conscious review | Rewrite in active if possible   |
<!-- Add project-specific forbidden terms as rows above this line -->

---

## How to Update This Document

1. **New term or rule:** Add directly if no existing rule is contradicted.
2. **Change to an existing term or rule:** File an Editorial Decision Record (EDR) with:
   - The current convention.
   - The proposed change.
   - Rationale.
   - Impact assessment (how many manuscript files are affected).
3. **After approval:** Update this file, run lint scripts, fix affected files.
4. **Agents:** May propose additions by appending to the Canonical Terms table and noting `<!-- proposed: [date] -->` until reviewed.

---

## Related Documents

| Document                              | Purpose                                  |
|---------------------------------------|------------------------------------------|
| [VOICE_GUIDE.md](VOICE_GUIDE.md)     | Voice and tone specification             |
| [GLOSSARY.md](GLOSSARY.md)           | Term definitions                         |
| [FACT_MODEL.md](FACT_MODEL.md)       | Citation framework                       |
