# Graphify Memory Architecture

Graphify is the canonical memory layer for Codex-OS.

## Memory Stack

```text
Markdown capture
  -> Graphify promotion
  -> Graph memory JSONL / future graph store
  -> Derived local indexes
  -> Agent retrieval and routing
```

## Layer Responsibilities

### Markdown Capture

Markdown is for human-readable working memory:

- Journals.
- Meeting notes.
- Site visit notes.
- Draft decisions.
- SOP drafts.
- Raw failure notes.

Markdown can be messy. It is not canonical until promoted.

### Graphify Canonical Memory

Graphify is for durable memory:

- Entities.
- Relationships.
- Decisions.
- Preferences.
- Commitments.
- Project facts.
- Failure lessons.
- Corrections.

Graphify entries must include source, confidence, sensitivity, and creation time.

### Private Memory

Private memory stores sensitive facts that should not be pushed to GitHub.

Default location: `private/memory/`, ignored by git.

Private memory can still use Graphify-compatible JSONL, but the files stay local unless the user explicitly approves sharing.

### Derived Indexes

SQLite, DuckDB, vector indexes, search indexes, and dashboards are derived views.

They are useful for:

- Fast query.
- Filtering.
- Analytics.
- Retrieval.
- Dashboards.

They are not the source of truth.

## Promotion Rule

Nothing becomes durable memory until it passes through Graphify promotion.

Promotion requires:

- Source.
- Reuse value.
- Sensitivity classification.
- Confidence score.
- Review date when uncertain.

## Correction Rule

Wrong memory is corrected by appending a correction event, not silently editing history.

Historical files can be amended only for formatting, invalid JSON, or explicitly approved redaction.

## Agent Rule

Before strategic routing, the Chief of Staff should retrieve:

1. Relevant permanent context.
2. Relevant project memory.
3. Relevant learnings.
4. Recent corrections.

