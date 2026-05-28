# Training Workflow

Use this sequence during the exercise.

## 1. Review The Inherited Repo

- Read `README.md`
- Read `docs/repo-overview.md`
- Inspect `modules`, `environments`, and `tests`
- Ask the research agent to summarize current behavior

## 2. Map The Module

- Trace inputs in `modules/network/variables.tf`
- Trace resources in `modules/network/main.tf`
- Trace outputs in `modules/network/outputs.tf`
- Trace environment overlays in `environments`

## 3. Review The Issue

- Open `docs/issues/issue-214-s3-gateway-endpoint.md`
- Restate the issue in your own words
- Identify which files are likely involved

## 4. Plan Before Editing

- Use the planner prompt or planner agent
- Produce:
  - current behavior summary
  - file-by-file implementation plan
  - code impact notes
  - validation strategy
  - human review gate

## 5. Run Safety And Impact Review

- Confirm which environments must stay unchanged
- Confirm route table association risk
- Confirm security and drift review needs
- Note any missing validation before the code draft is accepted

## 6. Draft The Change

- Keep the patch small
- Update tests or test scaffolding with the draft
- Explain what the change does in plain language

## 7. Human Review

- Review the Terraform diff
- Review validation results
- Review plan output
- Review assumptions and open questions

## 8. Local Checkpoint Only

Once the reviewer is satisfied, create a local commit checkpoint.
Do not run `terraform apply`.
Do not expand the exercise into branch strategy, push, PR creation, deployment, or release process.
