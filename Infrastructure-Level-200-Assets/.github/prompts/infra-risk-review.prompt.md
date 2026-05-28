---
description: Separate confirmed facts, assumptions, infrastructure risks, and human review gates.
tools: ['search/codebase', 'search/usages']
---

# Infrastructure Risk Review

Review the repo map, module map, and Issue 214 plan.

Do not edit files.
Do not run `terraform apply`.

Return:

1. Confirmed facts with evidence files
2. Assumptions and why they need review
3. Drift risk
4. Environment leakage risk
5. Route table association risk
6. Security review needs
7. Validation evidence needed
8. Human approval gate
