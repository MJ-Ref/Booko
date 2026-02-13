<!-- reviewed: 2026-02-13 -->
# Fact-Check Workflow — Nonfiction Verification

## Purpose

Verify every factual claim and citation in the manuscript. After this pass,
every claim is either sourced, acknowledged as opinion, or flagged as
editorial debt.

## Prerequisites

- [ ] Fact-checking model (`docs/models/FACT_MODEL.md`) reviewed — understand
      claim categories and verification standards
- [ ] Chapter contains claim tags: `<!-- CLAIM: ... -->` from drafting pass
- [ ] Source register (`docs/reference/SOURCE_REGISTER.md`) available
- [ ] Access to cited sources (links, PDFs, books)

## Workflow Steps

1. **Scan for claim tags.** Collect every `<!-- CLAIM: ... -->` tag in the
   chapter. Build a checklist of claims to verify.

2. **Verify each claim against its source.** For each claim:

   | Check | Action |
   |-------|--------|
   | Source exists | Confirm the cited work is real and accessible |
   | Claim matches source | Read the relevant passage — does the claim accurately represent it? |
   | Source is credible | Evaluate authority, recency, and peer review status |
   | Claim is current | Check whether newer data supersedes the source |

3. **Check citation format.** Ensure every citation follows the project's
   citation style (defined in the style sheet). Verify page numbers, URLs,
   and access dates.

4. **Flag unverified claims.** For claims that cannot be verified:
   - Mark with `<!-- UNVERIFIED: reason -->` in the manuscript
   - Log an editorial debt item with impact level

5. **Update the source register.** Add new sources. Update access dates for
   online sources. Remove sources no longer referenced.

6. **Remove resolved claim tags.** Replace verified `<!-- CLAIM: ... -->` tags
   with clean prose. Leave `<!-- UNVERIFIED: ... -->` tags in place for
   resolution.

## Claim Categories

| Category | Verification Standard |
|----------|----------------------|
| Statistical | Primary source required; secondary acceptable if primary unavailable |
| Historical | At least one peer-reviewed or authoritative source |
| Quotation | Exact wording confirmed against original; page number required |
| Scientific | Peer-reviewed publication or established reference work |
| Anecdotal | Attributed clearly; flagged as anecdote, not presented as evidence |
| Opinion | Clearly framed as opinion; no source required |

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Verified chapter | `manuscript/ch-NN.md` | Claim tags resolved |
| Updated source register | `docs/reference/SOURCE_REGISTER.md` | Current |
| Editorial debt items | `docs/quality/EDITORIAL_DEBT_REGISTER.md` | Logged for unresolvable claims |

## Acceptance Criteria

- [ ] Every `<!-- CLAIM: ... -->` tag is resolved (verified or converted to
      `<!-- UNVERIFIED: ... -->`)
- [ ] All citations follow the project's citation style
- [ ] Source register is complete and up to date
- [ ] Unverified claims are logged in the editorial debt register with clear
      next steps
- [ ] No claim is presented as fact without a source (unless explicitly
      categorized as opinion)
