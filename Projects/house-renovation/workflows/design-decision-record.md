# Design Decision Record Workflow

## Trigger

Use before committing to a material, fixture, layout, color palette, contractor recommendation, or purchase.

## Fields

- Decision:
- Room or area:
- Options considered:
- Recommendation:
- Cost:
- Lead time:
- Maintenance impact:
- Reversibility:
- Risks:
- Approval status:

## Rule

Do not treat a design preference as final until it is captured as a decision record or explicitly marked as exploratory.

Approved decisions should be promoted into `Projects/house-renovation/memory/project-memory.jsonl` as Graphify-compatible events.

