# Book_Map Directory Specification

Complete list of required files and directories.

## Required Directories

```
docs/
docs/book/
docs/decisions/EDR/
docs/workflows/
docs/quality/
docs/agent-guide/
docs/session/
series/
series/handoffs/
books/
books/book-01/
books/book-01/manuscript/
books/book-01/manuscript/front_matter/
books/book-01/manuscript/chapters/
books/book-01/manuscript/back_matter/
books/book-01/docs/
books/book-01/docs/book/
plans/
plans/active/
plans/completed/
scripts/
guide/
.claude/skills/book-map/references/
.claude/skills/session-handoff/references/
.codex/
.cursor/rules/
.github/
```

## Required Files

### Root (8 files)
| File | Purpose | Required |
|------|---------|----------|
| AGENTS.md | Universal agent entry point | Yes |
| CLAUDE.md | Claude Code entry point | Yes |
| CODEX.md | OpenAI Codex entry point | Yes |
| .cursorrules | Cursor AI entry point | Yes |
| .github/copilot-instructions.md | GitHub Copilot entry point | Yes |
| BOOK_ARCHITECTURE.md | Architecture router | Yes |
| README.md | Human entry point | Yes |
| .gitignore | Git ignore rules | Yes |

### Docs — Shared Book Architecture (5 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/_INDEX.md | Master navigation | Yes |
| docs/book/OVERVIEW.md | Series-level book premise and audience | Yes |
| docs/book/VOICE_GUIDE.md | Voice specification (series-wide) | Yes |
| docs/book/STYLE_SHEET.md | Terms and formatting (series-wide) | Yes |
| docs/book/GLOSSARY.md | Term definitions (series-wide) | Yes |
| docs/book/FACT_MODEL.md | Claim/citation rules | Optional (nonfiction) |

### Docs — Decisions (1+ files)
| File | Purpose | Required |
|------|---------|----------|
| docs/decisions/EDR/000-template.md | EDR template | Yes |

### Docs — Workflows (10 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/workflows/AUTHORING.md | Drafting workflow | Yes |
| docs/workflows/REVISION.md | Dev edit workflow | Yes |
| docs/workflows/LINE_EDIT.md | Line edit workflow | Yes |
| docs/workflows/COPY_EDIT.md | Copy edit workflow | Yes |
| docs/workflows/FACT_CHECK.md | Fact-check workflow | Optional (nonfiction) |
| docs/workflows/PRODUCTION.md | Production workflow | Yes |
| docs/workflows/DOC_GARDENING.md | Doc maintenance | Yes |
| docs/workflows/SERIES_PLANNING.md | Series arc planning | Yes |
| docs/workflows/BOOK_HANDOFF.md | Book-to-book transition | Yes |
| docs/workflows/RETROACTIVE_CHANGE.md | Retroactive continuity changes | Yes |

### Docs — Quality (2 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/quality/QUALITY_SCORECARD.md | Quality rubric | Yes |
| docs/quality/EDITORIAL_DEBT_REGISTER.md | Debt tracking | Yes |

### Docs — Agent Guide (3 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/agent-guide/ONBOARDING.md | Agent orientation | Yes |
| docs/agent-guide/COMMON_TASKS.md | Task recipes | Yes |
| docs/agent-guide/ROLE_CARDS.md | Role definitions (7 roles) | Yes |

### Docs — Session (1 file)
| File | Purpose | Required |
|------|---------|----------|
| docs/session/SESSION_HANDOFF.md | Live handoff | Yes |

### Series (8+ files)
| File | Purpose | Required |
|------|---------|----------|
| series/SERIES_OVERVIEW.md | Series premise, arc, planned books | Yes |
| series/SERIES_ARC.md | Macro plot structure across books | Yes |
| series/CHARACTERS.md | Series-wide character tracker | Yes |
| series/WORLD.md | World-building bible | Yes |
| series/TIMELINE.md | Master chronological timeline | Yes |
| series/THREADS.md | Plot thread tracker | Yes |
| series/READER_KNOWLEDGE.md | Reader knowledge at book boundaries | Yes |
| series/RETROACTIVE_LOG.md | Retroactive change log | Yes |

### Books (per-book structure)
| File | Purpose | Required |
|------|---------|----------|
| books/_INDEX.md | Series-level book status tracker | Yes |
| books/book-NN/manuscript/_INDEX.md | Per-book chapter status | Yes (per book) |
| books/book-NN/docs/_INDEX.md | Per-book doc index | Yes (per book) |
| books/book-NN/docs/book/OVERVIEW.md | Per-book premise | Yes (per book) |
| books/book-NN/docs/book/OUTLINE.md | Per-book chapter contracts | Yes (per book) |
| books/book-NN/docs/book/CONTINUITY_BIBLE.md | Per-book continuity | Optional (fiction/memoir) |

### Plans (2 files)
| File | Purpose | Required |
|------|---------|----------|
| plans/_INDEX.md | Plan directory | Yes |
| plans/_TEMPLATE.md | Plan template | Yes |

### Scripts (8 files)
| File | Purpose | Required |
|------|---------|----------|
| scripts/check-structure.sh | Structure validation | Yes |
| scripts/check-doc-freshness.sh | Freshness validation | Yes |
| scripts/check-agent-files.sh | Agent file validation | Yes |
| scripts/check-manuscript-metadata.sh | Metadata validation | Yes |
| scripts/check-outline-coverage.sh | Outline coverage | Yes |
| scripts/check-style-sheet-terms.sh | Term consistency | Yes |
| scripts/check-series-continuity.sh | Series document consistency | Yes |
| scripts/check-thread-resolution.sh | Plot thread tracking | Yes |

### Guide (14 files)
| File | Purpose | Required |
|------|---------|----------|
| guide/README.md | Guide overview | Yes |
| guide/01-why-book-map-exists.md | Chapter 1 | Yes |
| guide/02-voice-and-tone.md | Chapter 2 | Yes |
| guide/03-book-type-and-architecture.md | Chapter 3 | Yes |
| guide/04-prior-art-and-inspiration.md | Chapter 4 | Yes |
| guide/05-pacing-and-rhythm.md | Chapter 5 | Yes |
| guide/06-character-and-argument.md | Chapter 6 | Yes |
| guide/07-editorial-passes.md | Chapter 7 | Yes |
| guide/08-scenes-and-sections.md | Chapter 8 | Yes |
| guide/09-agent-collaboration.md | Chapter 9 | Yes |
| guide/10-momentum-and-failure-modes.md | Chapter 10 | Yes |
| guide/11-quality-scorecard.md | Chapter 11 | Yes |
| guide/12-skills-and-automation.md | Chapter 12 | Yes |
| guide/13-series-management.md | Chapter 13 | Yes |

### Skills + Config (6 files)
| File | Purpose | Required |
|------|---------|----------|
| .claude/settings.json | Claude config | Yes |
| .claude/skills/book-map/SKILL.md | Book_Map skill | Yes |
| .claude/skills/session-handoff/SKILL.md | Handoff skill | Yes |
| .codex/setup.sh | Codex setup | Yes |
| .cursor/rules/global.mdc | Cursor rules | Yes |
