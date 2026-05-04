# Permanent Context Protocol

Permanent context is the stable layer Codex can rely on across projects.

Graphify is the canonical memory system for durable context. Markdown is capture and drafting; derived indexes are query infrastructure.

## Sources

- `contexts/permanent/user-profile.md`
- `contexts/permanent/principles.md`
- `memory/graph/entities.json`
- `memory/graph/events.jsonl`
- `memory/graph/relationships.jsonl`
- `memory/learnings_log/`

## Canonical Memory

Canonical memory means:

- Durable memory is represented as graph-compatible entities, events, and relationships.
- Every durable memory has source, confidence, sensitivity, and timestamp metadata.
- Corrections are appended as new events instead of silently overwriting history.
- Derived indexes can be rebuilt from Graphify records.

## Private Memory Boundary

Private memory must not be committed to GitHub by default.

Use `private/memory/` for local-only memories. It may mirror Graphify JSONL structure, but it remains outside version control unless the user explicitly approves a specific export.

## Promotion Rules

A memory can be promoted when it is:

- Repeated or explicitly stated by the user.
- Useful across more than one task.
- Non-sensitive or intentionally stored.
- Written with enough context to be understood later.

Promotion must create or update graph-compatible records. Do not promote memory by only editing prose.

## Correction Rules

When memory is wrong:

- Append a correction event.
- Link it to the original event when possible.
- Lower confidence on the original event through a superseding correction record.
- Redact only when privacy or safety requires it.

## Review Cadence

- Daily: append journal notes.
- Weekly: promote stable lessons to graph memory.
- Monthly: prune stale assumptions and dead protocols.

## Learning Promotion

Learning log entries are not automatically permanent preferences. Promote them only when they reveal a reusable operating rule, then link the promoted graph event back to the learning ID.
