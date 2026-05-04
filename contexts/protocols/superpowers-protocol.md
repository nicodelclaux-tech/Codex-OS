# Superpowers Protocol

Superpowers is installed at `C:\Users\nicod\.codex\superpowers` and linked into native skill discovery at `C:\Users\nicod\.agents\skills\superpowers`.

## Invocation Rule

Every command starts with a skill gate:

1. Consider `superpowers:using-superpowers`.
2. Consider task-specific Superpowers skills:
   - brainstorming
   - writing-plans
   - executing-plans
   - subagent-driven-development
   - systematic-debugging
   - test-driven-development
   - verification-before-completion
   - requesting-code-review
   - receiving-code-review
   - finishing-a-development-branch
   - dispatching-parallel-agents
   - using-git-worktrees
   - writing-skills
3. Consider Codex-installed skills.
4. Announce the selected skill path.
5. Follow it unless it conflicts with direct user instructions or higher-priority safety rules.

## Restart Requirement

Codex must be restarted after installation before Superpowers skills are automatically discovered in the app skill list.

