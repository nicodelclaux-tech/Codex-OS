# Codex-OS

Codex-OS is a local-first personal operating system scaffold for running your life and work through Codex: durable context, agent teams, graph memory, self-improvement loops, skill packs, and permanent protocols.

This repo is intentionally infrastructure-shaped rather than app-shaped. It gives Codex a stable operating surface that can be linked from any project, cloned onto any machine, and improved over time.

## Core Ideas

- Permanent context lives in `contexts/permanent/`.
- Operating protocols live in `contexts/protocols/`.
- Agents and sub-agents are plain Markdown contracts in `agents/`.
- Project-specific agent systems live in `Projects/`.
- Graph memory lives in `memory/graph/` as versioned JSONL and schema files.
- Failures and corrections are captured in `memory/learnings_log/`.
- Graphify is the canonical memory layer; see `docs/graphify-memory-architecture.md`.
- Self-improvement loops live in `loops/`.
- Installed and recommended Codex skills are tracked in `skills/`.
- Integrations are declared in `integrations/` before being wired into MCP, GitHub, calendar, inbox, browser, or local tools.

## First Run

1. Review `contexts/permanent/user-profile.md`.
2. Fill in `contexts/permanent/principles.md`.
3. Run the bootstrap checklist in `ops/bootstrap.md`.
4. Use `scripts/daily-review.ps1` to generate a daily operating note.
5. Use `scripts/graphify.ps1` to append structured memories into `memory/graph/events.jsonl`.
6. Use `scripts/log-learning.ps1` whenever an agent failure or user correction should become a future lesson.

## Design Targets

- Local-first by default.
- Bring-your-own-model and bring-your-own-tools.
- Explicit approvals for side effects.
- Persistent memory, but only after reflection.
- Sub-agents with tight scopes and auditable outputs.
- Self-improvement through review loops, not hidden mutation.
- Superpowers skill gate before every command.

## Inspiration

This scaffold borrows product patterns from agentic workspaces such as CoWork OS and OpenLoaf, second-brain patterns from Khoj, and workspace primitives from AppFlowy. The implementation here is your own system layer for Codex.
