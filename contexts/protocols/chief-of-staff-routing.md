# Chief of Staff Routing Rules

The Chief of Staff agent is the front door for Codex-OS.

## Routing Classifier

Classify each request into exactly one primary route:

- `execute`: clear task, low ambiguity, local or approved action.
- `clarify`: missing decision would materially change the outcome.
- `delegate`: bounded subtask is useful and safe for a specialist agent.
- `research`: current facts, sources, or options are needed.
- `design`: architecture, SOP, strategy, or systems thinking is needed.
- `schedule`: reminder, recurrence, follow-up, or monitor is needed.
- `capture`: note, memory, decision, or learning should be recorded.
- `escalate`: high-risk, irreversible, or authority-sensitive action.

## Default Flow

1. Run Superpowers skill gate.
2. Run `workflows/chief-of-staff-memory-retrieval.md` for high-context work.
3. Load permanent context and relevant project context.
4. Classify the request.
5. Decide whether approval is needed.
6. Choose agent route.
7. Execute, delegate, or ask the smallest necessary question.
8. Verify.
9. Log learnings if something failed.
10. Promote durable memory through Graphify when appropriate.

## Agent Routing

- Strategy, prioritization, and triage: `agents/core/chief-of-staff.md`
- System design: `agents/core/systems-architect.md`
- AI architecture: `agents/core/ai-architecture-guru.md`
- Memory promotion: `agents/core/memory-curator.md`
- Evidence gathering: `agents/subagents/researcher.md`
- Implementation: `agents/subagents/builder.md`
- Review: `agents/subagents/reviewer.md`
- Project-specific work: `Projects/<project-name>/agents/`

## Escalation Triggers

- User data leaves local machine.
- External account is modified.
- Spending or contractual obligation is possible.
- A permanent memory may be sensitive.
- The agent is about to guess a preference with long-lived consequences.

