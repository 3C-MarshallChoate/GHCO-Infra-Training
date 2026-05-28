---
description: Create a scoped Terraform implementation plan for Issue 214 before editing.
tools: ['search/codebase', 'search/usages']
---

# Infrastructure Issue Plan

Use the inherited repo review and Issue 214.

Do not edit files.
Do not run `terraform apply`.
Do not invent infrastructure rules.

Create a narrow implementation plan for:

Issue 214: Add optional S3 gateway endpoint support to the shared network module and enable it in dev only.

Return:

1. Restated acceptance criteria
2. Current behavior from repo evidence
3. File-by-file implementation plan
4. Inputs, defaults, resources, and outputs to add or preserve
5. Dev-only environment change
6. Behaviors that must remain unchanged
7. Validation plan
8. Human review gate before implementation
