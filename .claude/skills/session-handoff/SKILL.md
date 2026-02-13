# /session-handoff

Generate a session handoff document for the current Book_Map project.

## Instructions for Claude

1. Read the current `docs/session/SESSION_HANDOFF.md` to understand the previous state.
2. Read `references/handoff-template.md` for the required structure.
3. Review what has changed this session:
   - Check `git diff` or `git status` for modified files
   - Check `manuscript/_INDEX.md` for chapter status changes
   - Check `plans/_INDEX.md` for plan progress
4. Fill in all sections of the handoff template:
   - **Last Updated**: today's date
   - **Session Summary**: 1-2 sentences describing what was accomplished
   - **Work Completed**: specific deliverables (files created/modified, chapters drafted/edited)
   - **Work In Progress**: current state of unfinished work
   - **Blocked Items**: anything stuck, with reason and unblock condition
   - **Next Steps**: prioritized list for next session
   - **Key Decisions**: any editorial decisions made (especially EDRs)
   - **Open Questions**: ambiguities needing human input
5. Fill in book-specific fields:
   - **Narrative Temperature**: the emotional/tonal state of the writing at session end (tense, reflective, building, climactic, etc.)
   - **Last Written Passage**: final 200-300 words of prose written this session
   - **Dangling Threads**: story/argument elements introduced but not yet resolved
6. Write the completed handoff to `docs/session/SESSION_HANDOFF.md`.
7. Update the `<!-- reviewed: YYYY-MM-DD -->` freshness tag.

## Output format

Write the handoff document directly. Confirm with:
```
Session handoff updated: docs/session/SESSION_HANDOFF.md
Summary: [1-line summary]
Next session should: [top priority]
```
