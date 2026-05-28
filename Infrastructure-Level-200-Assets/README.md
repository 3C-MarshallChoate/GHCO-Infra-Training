# Infrastructure Level 200 Agentic Copilot Assets

Prepared by 3Cloud.

This folder is a safe local workshop repo for a 120-minute Level 200 exercise on multi-agent, repo-wide infrastructure workflows in VS Code.

## What This Repo Includes

| Asset | Path | Purpose |
|---|---|---|
| Workspace instructions | `.github/copilot-instructions.md` | Always-on guidance for safe local Copilot use |
| Coordinator agent | `.github/agents/infra-agentic-coordinator.agent.md` | Suggested top-level orchestration flow |
| Research agent | `.github/agents/infra-codebase-researcher.agent.md` | Read-only Terraform repo inspection |
| Module mapper agent | `.github/agents/infra-module-mapper.agent.md` | Module input, output, overlay, and dependency mapping |
| Planner agent | `.github/agents/infra-planner.agent.md` | Read-only implementation planning |
| Safety review agent | `.github/agents/infra-impact-safety-reviewer.agent.md` | Drift, blast radius, and review-gate analysis |
| Validation strategist | `.github/agents/infra-validation-strategist.agent.md` | Validation and plan review guidance |
| Draft implementation agent | `.github/agents/infra-implementation-drafter.agent.md` | Draft Terraform change plan and patch shape |
| Human review agent | `.github/agents/infra-human-reviewer.agent.md` | Human-in-the-loop review checklist |
| Commit readiness agent | `.github/agents/infra-commit-readiness.agent.md` | Local checkpoint readiness check |
| Inherited repo review prompt | `.github/prompts/infra-inherited-repo-review.prompt.md` | Repeatable repo-wide orientation before issue work |
| Issue plan prompt | `.github/prompts/infra-issue-plan.prompt.md` | Reviewable implementation planning before edits |
| Change impact prompt | `.github/prompts/infra-change-impact.prompt.md` | Impact, unchanged behavior, and safety review |
| Risk review prompt | `.github/prompts/infra-risk-review.prompt.md` | Assumption and human-gate review |
| Implementation draft prompt | `.github/prompts/infra-implementation-draft.prompt.md` | Small draft implementation and test plan |
| Validation prompt | `.github/prompts/infra-validation-runbook.prompt.md` | Local validation and plan review |
| Human review prompt | `.github/prompts/infra-human-review.prompt.md` | Human-in-the-loop review checklist |
| Commit readiness prompt | `.github/prompts/infra-commit-readiness.prompt.md` | Local checkpoint readiness only |
| Sample Terraform repo | `modules`, `environments`, `tests`, `docs` | Small Terraform workspace for the lab |
| Issue brief | `docs/issues/issue-214-s3-gateway-endpoint.md` | Multi-file infrastructure issue for the workshop |
| Maintainer handoff | `docs/maintainer-handoff.md` | Partial inherited-repo context for confirmed-versus-assumed review |
| Planning worksheet | `docs/planning-worksheet.md` | Capture template for repo map, plan, and gates |
| Test matrix | `docs/test-matrix.md` | Review artifact for unchanged behavior and Issue 214 coverage |

## Quick Start In VS Code

1. Open this folder directly in VS Code:
   `Level 200 Infrastructure Training/Infrastructure-Level-200-Assets`
2. Open Copilot Chat in VS Code.
3. Make sure hidden files are visible in the Explorer so you can use `.github`.
4. Confirm custom agents and subagents are available:
   - type `/agents` or open Configure Chat / Agent Customizations
   - confirm `Infra Agentic Coordinator`, `Infra Codebase Researcher`, `Infra Module Mapper`, and `Infra Validation Strategist` are loaded
   - confirm the `agent` or `runSubagent` tool is enabled if it appears in the tools menu
5. Run a quick Copilot availability check with the model you plan to use. The response should show subagent or delegated-agent activity. If the selected model fails with a `max_tokens` or `max_completion_tokens` error, switch to another approved available model before continuing.
6. If Copilot says it cannot find the codebase or only finds `.github/copilot-instructions.md`, add `modules`, `environments`, `tests`, `README.md`, `versions.tf`, `providers.tf`, and `docs/issues/issue-214-s3-gateway-endpoint.md` as chat context, then rerun the inherited repo review.
7. Use the Session 4 line-by-line guide for live delivery. The guide contains the issue brief, handoff note, worksheet, and test matrix content inline.

## Suggested 120-Minute Flow

1. **Inherited repo review**
   - Use `Infra Codebase Researcher`
   - Capture facts and assumptions in the inline worksheet in the session guide
2. **Module and overlay map**
   - Use `Infra Module Mapper`
   - Trace module inputs, outputs, endpoint patterns, and environment overlays
3. **Plan the issue**
   - Use `Infra Planner` or `.github/prompts/infra-issue-plan.prompt.md`
4. **Review impact and safety**
   - Use `Infra Impact and Safety Reviewer`
   - Confirm drift risk, blast radius, and unchanged environment behavior
5. **Draft the implementation**
   - Use `Infra Implementation Drafter`
   - Ask for a small patch and matching validation notes
6. **Human review before acceptance**
   - Use `Infra Human Reviewer`
   - Compare planned coverage against the inline test matrix in the session guide
7. **Local checkpoint only**
   - Use `Infra Commit Readiness`
   - Make a local commit after human approval
   - Do not teach or require branch, push, PR, apply, or release steps in this exercise

## Validation Commands

Run only the commands available in your local environment:

```bash
terraform fmt -check -recursive
terraform -chdir=environments/dev init -backend=false
terraform -chdir=environments/dev validate
tflint --recursive
checkov -d .
terraform test
terraform -chdir=environments/dev plan -var-file=../../tests/fixtures/dev.tfvars -out=dev-s3-endpoint.tfplan
terraform -chdir=environments/dev show dev-s3-endpoint.tfplan
```

Never run `terraform apply` during this workshop.

## Repo Shape

```text
.github/
  agents/
  prompts/
docs/
  issues/
environments/
  dev/
  test/
  prod/
modules/
  network/
tests/
  fixtures/
scripts/
```

## Workshop Boundary

These assets are for local workshop use only.

- Keep Terraform changes small and reviewable.
- Treat generated output as draft until a human accepts it.
- Do not assume real AWS credentials, hosted agents, CI, remote state, or cloud automation.
- Do not teach branch, push, pull request, apply, deploy, or release strategy in this lab.
- Use local commits only as learning checkpoints after review.
