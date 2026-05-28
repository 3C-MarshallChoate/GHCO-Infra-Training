---
description: Review impact, blast radius, drift risk, and safety before Terraform edits.
tools: ['search/codebase', 'search/usages']
---

# Infrastructure Change Impact Review

Review the proposed Issue 214 plan.

Do not edit files.
Do not run `terraform apply`.

Explain:

- what the change will do
- which Terraform resources and environments it impacts
- which behavior must remain unchanged
- which defaults protect test and prod
- route table association risks
- drift or replacement risks
- security review considerations
- what a human reviewer must approve before implementation

Return the answer as a concise safety review checklist.
