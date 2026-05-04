# Graphify Correction Workflow

Use this when an existing memory is wrong, stale, sensitive, or misleading.

## Steps

1. Identify the original memory ID.
2. Determine correction type:
   - `supersedes`
   - `lowers_confidence`
   - `redacts`
   - `expires`
   - `clarifies`
3. Append a correction event with source and rationale.
4. Add a relationship from correction to original memory.
5. If private or sensitive, move details to `private/memory/` and keep only a safe public pointer.

## Rule

Prefer append-only correction. Edit history only for invalid JSON, formatting, or approved redaction.

