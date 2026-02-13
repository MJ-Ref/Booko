<!-- reviewed: 2026-02-13 -->
# Production Workflow — Pass 5: Final Polish & Export

## Purpose

Perform a final proofread, normalize formatting across the entire manuscript,
complete front and back matter, and prepare the manuscript for its target
output format(s).

## Prerequisites

- [ ] All chapters have status **Copy-Edited** (Pass 4 complete) at minimum
- [ ] Editorial debt register reviewed — no High-impact items remain open
- [ ] Front matter templates available (`manuscript/front/`)
- [ ] Back matter templates available (`manuscript/back/`)
- [ ] Target output format(s) confirmed (print PDF, EPUB, web, etc.)

## Workflow Steps

1. **Final proofread.** Read the full manuscript in sequence. Focus on:
   - Typos and spelling errors that survived earlier passes
   - Widows and orphans in paragraph breaks
   - Repeated words across page or section boundaries
   - Broken markdown or formatting artifacts

2. **Format normalization.** Ensure consistency across all chapters:
   - Heading hierarchy (H1 for chapter titles, H2 for sections, etc.)
   - Scene break markers
   - Block quote styling
   - Image/figure captions and numbering
   - Footnote or endnote formatting

3. **Front matter completion.**
   - [ ] Title page
   - [ ] Copyright page
   - [ ] Dedication (if applicable)
   - [ ] Table of contents (auto-generated or manually verified)
   - [ ] Foreword / preface / introduction (if applicable)
   - [ ] Acknowledgments (if placed in front)

4. **Back matter completion.**
   - [ ] Appendices (if applicable)
   - [ ] Glossary (if applicable)
   - [ ] Bibliography / works cited
   - [ ] Index (if applicable)
   - [ ] Author bio
   - [ ] Acknowledgments (if placed in back)

5. **Export checks.** For each target format:
   - Build the output and verify rendering
   - Check hyperlinks and cross-references
   - Verify image resolution and placement
   - Confirm table formatting
   - Test table of contents navigation

## Forbidden

- **Content changes** unless a critical factual error or legal concern is
  discovered. If substantive changes are needed, return the chapter to the
  appropriate earlier pass and re-run subsequent passes.

## Outputs

| Artifact | Location | State |
|----------|----------|-------|
| Production-ready manuscript | `manuscript/` | All chapters: Production-Ready |
| Completed front matter | `manuscript/front/` | Final |
| Completed back matter | `manuscript/back/` | Final |
| Export artifacts | `output/` | Target format(s) |

## Acceptance Criteria

- [ ] Zero typos or formatting errors in final proofread
- [ ] All chapters use consistent heading hierarchy and formatting
- [ ] Front matter is complete and accurate
- [ ] Back matter is complete and accurate
- [ ] Table of contents matches actual chapter titles and order
- [ ] All cross-references resolve correctly
- [ ] Export builds successfully for every target format
- [ ] All chapter metadata statuses updated to `Production-Ready`
- [ ] Quality scorecard score of 4.0 or higher
