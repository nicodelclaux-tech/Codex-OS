# Codex-OS Agent Operating Contract

Codex should treat this repository as the control plane for the user's personal OS.

## Mandatory Skill Gate

Before responding to any user command or taking any tool action, run the Superpowers check:

1. Ask whether any installed skill could apply.
2. If there is even a small chance, load or invoke that skill first.
3. Announce the relevant skill and why it is being used.
4. Follow the skill unless it conflicts with direct user instructions or higher-priority system rules.

Current default: always consider `superpowers:using-superpowers` first, then route to task-specific Superpowers or Codex skills.

## Default Behavior

- Read `contexts/permanent/` before making broad recommendations.
- Use `contexts/protocols/` for recurring operating rules.
- Apply `contexts/protocols/agent-sop.md` to all agents.
- Apply `contexts/protocols/chief-of-staff-routing.md` for triage.
- Write durable lessons to `memory/journals/` first.
- Promote only high-confidence, reusable memories into `memory/graph/events.jsonl`.
- Keep agent outputs concrete: decisions, changes, evidence, next actions.

## Boundaries

- Do not store secrets, tokens, private keys, or credentials in this repo.
- Do not automate external side effects without explicit approval.
- Do not turn speculative preferences into permanent memory.
- Do not overwrite user-authored context without preserving history.

## Sub-Agent Rules

- Delegate only bounded, concrete tasks.
- Give each sub-agent a clear write scope.
- Require a final report with changed paths, evidence, and unresolved risk.
- Merge learnings into memory only after review.

## Failure Learning Rule

Any agent failure, missed requirement, bad assumption, broken verification, or user correction must be logged in `memory/learnings_log/` before the agent claims the issue is resolved.
