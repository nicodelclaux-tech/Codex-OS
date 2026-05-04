# Project Agent Protocol

Each project under `Projects/` can define its own agent rules while inheriting global Codex-OS SOPs.

## Required Project Files

- `README.md`
- `project-context.md`
- `agents/project-chief.md`
- `agents/domain-specialists.md`
- `protocols/routing.md`
- `protocols/approval.md`
- `workflows/`
- `memory/`

## Inheritance Order

1. System and developer instructions.
2. Direct user request.
3. `AGENTS.md`.
4. Global protocols in `contexts/protocols/`.
5. Project protocols in `Projects/<project>/protocols/`.
6. Agent role files in `Projects/<project>/agents/`.

## Project Memory

- Store raw project notes in `Projects/<project>/memory/journal.md`.
- Store durable project facts in `Projects/<project>/memory/project-memory.jsonl`.
- Promote only cross-project lessons to root `memory/graph/`.
- Keep project memory Graphify-compatible: source, confidence, sensitivity, timestamp, and tags are required for durable entries.
- Use `workflows/graphify-promotion.md` when promoting project notes into durable memory.

