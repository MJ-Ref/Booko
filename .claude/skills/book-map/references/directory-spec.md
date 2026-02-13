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
manuscript/
manuscript/front_matter/
manuscript/chapters/
manuscript/back_matter/
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

### Docs — Book Architecture (7 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/_INDEX.md | Master navigation | Yes |
| docs/book/OVERVIEW.md | Book premise and audience | Yes |
| docs/book/OUTLINE.md | Chapter contracts | Yes |
| docs/book/VOICE_GUIDE.md | Voice specification | Yes |
| docs/book/STYLE_SHEET.md | Terms and formatting | Yes |
| docs/book/GLOSSARY.md | Term definitions | Yes |
| docs/book/FACT_MODEL.md | Claim/citation rules | Optional (nonfiction) |
| docs/book/CONTINUITY_BIBLE.md | Continuity tracking | Optional (fiction/memoir) |

### Docs — Decisions (1+ files)
| File | Purpose | Required |
|------|---------|----------|
| docs/decisions/EDR/000-template.md | EDR template | Yes |

### Docs — Workflows (7 files)
| File | Purpose | Required |
|------|---------|----------|
| docs/workflows/AUTHORING.md | Drafting workflow | Yes |
| docs/workflows/REVISION.md | Dev edit workflow | Yes |
| docs/workflows/LINE_EDIT.md | Line edit workflow | Yes |
| docs/workflows/COPY_EDIT.md | Copy edit workflow | Yes |
| docs/workflows/FACT_CHECK.md | Fact-check workflow | Optional (nonfiction) |
| docs/workflows/PRODUCTION.md | Production workflow | Yes |
| docs/workflows/DOC_GARDENING.md | Doc maintenance | Yes |

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
| docs/agent-guide/ROLE_CARDS.md | Role definitions | Yes |

### Docs — Session (1 file)
| File | Purpose | Required |
|------|---------|----------|
| docs/session/SESSION_HANDOFF.md | Live handoff | Yes |

### Manuscript (1 index + chapters)
| File | Purpose | Required |
|------|---------|----------|
| manuscript/_INDEX.md | Status tracking | Yes |

### Plans (2 files)
| File | Purpose | Required |
|------|---------|----------|
| plans/_INDEX.md | Plan directory | Yes |
| plans/_TEMPLATE.md | Plan template | Yes |

### Scripts (6 files)
| File | Purpose | Required |
|------|---------|----------|
| scripts/check-structure.sh | Structure validation | Yes |
| scripts/check-doc-freshness.sh | Freshness validation | Yes |
| scripts/check-agent-files.sh | Agent file validation | Yes |
| scripts/check-manuscript-metadata.sh | Metadata validation | Yes |
| scripts/check-outline-coverage.sh | Outline coverage | Yes |
| scripts/check-style-sheet-terms.sh | Term consistency | Yes |

### Guide (13 files)
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

### Skills + Config (6 files)
| File | Purpose | Required |
|------|---------|----------|
| .claude/settings.json | Claude config | Yes |
| .claude/skills/book-map/SKILL.md | Book_Map skill | Yes |
| .claude/skills/session-handoff/SKILL.md | Handoff skill | Yes |
| .codex/setup.sh | Codex setup | Yes |
| .cursor/rules/global.mdc | Cursor rules | Yes |
