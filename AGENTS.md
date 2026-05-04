# Codex-OS Agent Operating Contract

Codex should treat this repository as the control plane for the user's personal OS.

## Default Behavior

- Read `contexts/permanent/` before making broad recommendations.
- Use `contexts/protocols/` for recurring operating rules.
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

