<!-- reviewed: 2026-02-13 -->
# Quality Scorecard

## Scoring Method

Each dimension is scored on a 1-5 scale. The overall score is the weighted
average of all four dimensions. Scores are recorded at editorial stage gates
and during spot checks.

## Dimensions

| # | Dimension | Weight | What It Measures |
|---|-----------|--------|------------------|
| 1 | Book Architecture Integrity | 25% | Outline completeness, chapter mapping, consistent throughline |
| 2 | Voice & Style Consistency | 25% | Terminology stability, voice rules followed, sentence clarity |
| 3 | Accuracy & Trust | 25% | Claims sourced, no citation-needed markers, no contradictions |
| 4 | Production Readiness | 25% | Formatting normalized, front/back matter complete, metadata correct |

## Rubric

### 1. Book Architecture Integrity (25%)

| Score | Observables |
|-------|-------------|
| 5 | Every chapter maps 1:1 to outline contract. Throughline is clear from first to last page. No orphaned subplots or arguments. |
| 4 | All major outline points addressed. One or two minor beats deferred or moved. Throughline intact. |
| 3 | Most outline points addressed. Some chapters drift from contract. Throughline recognizable but weakened in spots. |
| 2 | Multiple chapters diverge from outline. Missing beats affect coherence. Reader may lose the thread. |
| 1 | Outline and manuscript are substantially out of sync. No clear throughline. |

### 2. Voice & Style Consistency (25%)

| Score | Observables |
|-------|-------------|
| 5 | Reads as a single author throughout. Every term matches style sheet. Sentence rhythm aligns with voice guide. |
| 4 | Consistent voice with one or two minor lapses. Style sheet followed with rare exceptions. |
| 3 | Voice is generally consistent but drifts in some chapters. Several style sheet deviations. |
| 2 | Noticeable tonal shifts between chapters. Frequent terminology inconsistency. |
| 1 | Reads like multiple authors with no unifying voice. Style sheet largely ignored. |

### 3. Accuracy & Trust (25%)

| Score | Observables |
|-------|-------------|
| 5 | All claims sourced. Zero `<!-- CLAIM -->` or `<!-- UNVERIFIED -->` tags remain. No contradictions. |
| 4 | All significant claims sourced. One or two minor claims pending. No contradictions. |
| 3 | Most claims sourced. Several unverified tags remain. Minor contradictions flagged. |
| 2 | Many unsourced claims. Multiple contradictions. Reader trust at risk. |
| 1 | Pervasive unsourced claims. Major contradictions. Manuscript is unreliable. |

### 4. Production Readiness (25%)

| Score | Observables |
|-------|-------------|
| 5 | All formatting normalized. Front and back matter complete. Metadata correct. Export builds clean. |
| 4 | Formatting consistent with minor deviations. Front/back matter nearly complete. Metadata mostly correct. |
| 3 | Formatting inconsistencies across chapters. Some front/back matter missing. Metadata has gaps. |
| 2 | Significant formatting problems. Front/back matter incomplete. Export has errors. |
| 1 | No consistent formatting. Front/back matter absent. Manuscript cannot be exported. |

## Overall Score Interpretation

| Range | Rating | Meaning |
|-------|--------|---------|
| 4.5 - 5.0 | Excellent | Ready for publication or next stage |
| 3.5 - 4.4 | Good | Minor issues to resolve before advancing |
| 2.5 - 3.4 | Needs Work | Significant gaps — return to appropriate pass |
| 1.0 - 2.4 | Critical | Major rework required — escalate to editorial lead |

## Audit Cadence

| Trigger | Scope | Depth |
|---------|-------|-------|
| Stage gate (between passes) | Full manuscript | All 4 dimensions |
| During drafting | Current chapter only | Architecture + Accuracy spot check |
| Weekly review | Chapters touched this week | All 4 dimensions |
| Pre-production | Full manuscript | All 4 dimensions — must score 4.0+ to proceed |

## How Agents Self-Assess

1. Before advancing a chapter to the next pass, score it against the relevant
   dimensions. A chapter must score 3.5 or higher in every dimension relevant
   to the current pass to advance.

2. Record the score in the chapter's metadata header using HTML comments:
   ```
   <!-- quality_score: architecture=4 voice=4 accuracy=3 production=n/a -->
   <!-- quality_date: 2026-02-13 -->
   ```

3. If any dimension scores below 3.5, log the gap in the editorial debt
   register and address it before advancing.

4. At stage gates, an independent review (different agent or human) should
   verify the self-assessment.
