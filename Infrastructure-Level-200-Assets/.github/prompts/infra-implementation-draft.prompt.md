---
description: Draft the smallest Terraform implementation for Issue 214 after review.
tools: ['search/codebase', 'search/usages', 'editFiles']
---

# Infrastructure Implementation Draft

Draft the smallest Terraform change for Issue 214.

You may edit files only for the proposed draft.
Do not run `terraform apply`.
Do not change test or prod overlays.
Do not refactor unrelated Terraform.
Do not change provider or backend configuration.

Before editing, summarize the intended file edits.

Implement:

- optional S3 gateway endpoint support in the network module
- safe default of disabled
- dev-only enablement with explicit route table ids
- output for the optional S3 gateway endpoint id
- focused tests or test scaffolding for enabled and disabled behavior

After editing, return:

1. Files changed
2. What changed
3. What behavior remains unchanged
4. Validation commands to run
5. Human review notes
