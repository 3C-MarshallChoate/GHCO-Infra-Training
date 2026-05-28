# Repo Overview

This sample repo models a shared AWS network module maintained with HashiCorp Terraform.

It is intentionally small, but Issue 214 crosses module inputs, endpoint resources, environment overlays, tests, and validation evidence.

## Main Areas

- `modules/network/main.tf`
  - shared network resources and existing interface endpoint pattern
- `modules/network/variables.tf`
  - module inputs and safe defaults
- `modules/network/locals.tf`
  - naming and tag conventions
- `modules/network/outputs.tf`
  - module outputs consumed by environments
- `environments/dev/network.tf`
  - dev overlay that is allowed to enable S3 gateway endpoint support during the exercise
- `environments/test/network.tf`
  - test overlay that must remain unchanged
- `environments/prod/network.tf`
  - prod overlay that must remain unchanged
- `tests/network.tftest.hcl`
  - Terraform test scaffolding for module behavior

## Intentional Workshop Shape

- There is one issue brief.
- The issue is real enough to need Terraform reading, not guessing.
- The repo does not require real cloud credentials for review.
- The workflow is designed for human review before any local commit.

## Learner Goal

Understand the current Terraform implementation, explain the impact of Issue 214, prepare a safe implementation, validate it locally, and only then make a local checkpoint commit after review.
