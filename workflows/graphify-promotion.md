# Graphify Promotion Workflow

Use this workflow to promote raw notes, learnings, decisions, and project facts into canonical graph memory.

## Inputs

- Journal note.
- Learning log entry.
- Project memory note.
- User-stated preference.
- Decision record.

## Steps

1. Identify the candidate memory.
2. Classify it as entity, event, relationship, decision, preference, commitment, or correction.
3. Check sensitivity.
4. Decide whether it belongs in public repo memory or local private memory.
5. Assign confidence.
6. Preserve the source.
7. Append a Graphify-compatible record.
8. Add relationships when useful.
9. Record review date when uncertain.

## Output Locations

- Public durable memory: `memory/graph/events.jsonl`.
- Public relationships: `memory/graph/relationships.jsonl`.
- Local-only durable memory: `private/memory/events.jsonl`.
- Project-local durable memory: `Projects/<project>/memory/project-memory.jsonl`.

## Promotion Gate

Do not promote:

- Secrets.
- Ambiguous one-off statements.
- Sensitive facts without approval.
- Speculative inferences.
- Temporary mood or context.

## Concurrency Rule

Do not run graph memory writes in parallel with graph memory reads, validation, or other writes. Graphify JSONL append operations are sequential.
