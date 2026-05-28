# Copilot Workspace Instructions

Use these instructions for this Level 200 infrastructure workshop workspace only.

- Treat all Copilot output as draft until a human reviews it.
- Prefer small, focused Terraform changes over broad rewrites.
- Do not invent networking rules, route table rules, IAM rules, environment rules, approval paths, or acceptance criteria.
- Before editing files, summarize the current Terraform behavior, assumptions, risks, validation plan, and plan-review expectations.
- Start from the issue brief and confirm the requested behavior against visible Terraform before proposing edits.
- For multi-file Terraform changes, explain the file-by-file impact in plain language.
- Keep the repo local and self-contained. Do not assume real AWS credentials, hosted agents, CI, remote state, or external integrations.
- Do not run or recommend `terraform apply`.
- For tests, include at least one disabled-default case and one enabled-environment case when behavior changes.
- If context is missing, ask for it instead of guessing.
- If a task touches networking, route tables, endpoints, environment overlays, IAM, or security posture, call out platform and security review needs.
- Never suggest pushing, branching, merging, releasing, deploying, applying, or approving work without human confirmation.
- Local commits are allowed only as human-approved checkpoints after tests, plan review, and review are complete.
