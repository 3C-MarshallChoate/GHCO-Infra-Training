---
agent: 'agent'
description: Review an inherited local Terraform repo before planning or editing code.
tools: ['agent', 'search/codebase', 'search/usages']
---

# Infrastructure Inherited Repo Review

Use the current local workspace as a newly inherited Terraform repository.

Do not edit files.
Do not run source-control actions.
Do not run `terraform apply`.
Do not invent infrastructure rules.

Review the repo before solving any issue.

Expected repo pack paths:

- `README.md`
- `versions.tf`
- `providers.tf`
- `modules/network/main.tf`
- `modules/network/variables.tf`
- `modules/network/locals.tf`
- `modules/network/outputs.tf`
- `environments/dev/network.tf`
- `environments/test/network.tf`
- `environments/prod/network.tf`
- `tests/network.tftest.hcl`
- `docs/issues/issue-214-s3-gateway-endpoint.md`

If search or indexing only finds `.github/copilot-instructions.md`, do not conclude that no codebase exists. State that codebase indexing or chat context appears incomplete, list the files that must be added as context, and wait for those files before returning the repo map.

Use subagents when available:

1. Run `Infra Codebase Researcher` as a subagent to map repo structure, Terraform modules, environment overlays, tests, and likely infrastructure rules.
2. Run `Infra Module Mapper` as a subagent to trace module inputs, outputs, endpoint behavior, route table paths, and environment usage.
3. Run `Infra Validation Strategist` as a subagent to identify existing validation coverage and likely gaps.

If subagents are not available, state that limitation clearly before returning the analysis.

Return:

1. Repo map
2. Module and overlay map
3. Existing endpoint behavior
4. Current defaults that must remain unchanged
5. Tests and validation assets found
6. Risk areas for a new maintainer
7. Missing context
8. Confirmed facts versus inferred rules
9. Recommended next prompt
