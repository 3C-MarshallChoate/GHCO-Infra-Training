---
description: Check whether the Terraform draft is ready for a local commit checkpoint.
tools: ['search/codebase', 'search/usages']
---

# Infrastructure Commit Readiness

Review local checkpoint readiness for Issue 214.

Do not edit files.
Do not run source-control actions.
Do not run `terraform apply`.

Return:

1. Whether the checkpoint is ready
2. Files expected in the local commit
3. Files to exclude
4. Validation evidence reviewed
5. Remaining gaps
6. Suggested local commit message

The checkpoint must remain local for the exercise.
