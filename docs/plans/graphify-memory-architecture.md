# Graphify Memory Architecture Plan

## Goal

Make Graphify the canonical memory layer for Codex-OS, with Markdown as the working capture layer and local indexes as derived views.

## Concerns Reviewed

- Do not replace graph memory with SQLite or DuckDB as the source of truth.
- Do not store private sensitive memory in the public repo by default.
- Preserve existing JSONL graph files.
- Keep scripts simple and PowerShell-native for this Windows workspace.

## Tasks

### Task 1: Document Canonical Memory Architecture

1. Add a dedicated architecture document describing Markdown -> Graphify -> derived index flow.
2. Define what belongs in Graphify, Markdown, local private storage, and derived indexes.
3. Update the root README to point to the architecture.

Verification:

- Search docs for `Graphify = canonical`.
- Confirm README references the Graphify architecture document.

### Task 2: Fortify Memory Protocol

1. Update permanent context protocol to state Graphify is canonical.
2. Add promotion and correction rules.
3. Add privacy boundary for private memory.

Verification:

- Search memory protocols for `canonical memory`.
- Confirm private memory is explicitly excluded from GitHub by default.

### Task 3: Add Graphify Promotion Workflow

1. Add workflow document for promoting journals, learnings, and project facts into graph memory.
2. Add a graph correction workflow for wrong memories.
3. Add Chief of Staff retrieval rules.

Verification:

- Confirm workflow files exist.
- Confirm Chief of Staff routing references Graphify retrieval.

### Task 4: Improve Scripts

1. Add `scripts/promote-learning-to-graph.ps1`.
2. Add `scripts/query-graph-memory.ps1`.
3. Keep `scripts/graphify.ps1` as the primitive append command.

Verification:

- Run both new scripts with safe read-only or local append test inputs.
- Validate JSON files still parse.

### Task 5: Update Project Memory Protocols

1. Update project protocol so project memory also routes through Graphify-compatible events.
2. Add house-renovation memory promotion notes.

Verification:

- Search project docs for Graphify.
- Confirm house renovation project memory remains JSONL-compatible.

