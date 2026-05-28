---
description: Build and interpret a Terraform validation runbook for Issue 214.
tools: ['search/codebase', 'search/usages']
---

# Infrastructure Validation Runbook

Create a local validation runbook for Issue 214.

Do not edit files.
Do not run `terraform apply`.

Include:

1. Format check
2. Terraform init without backend
3. Terraform validate
4. TFLint or static lint review
5. Checkov or security scan review
6. Terraform test
7. Dev plan review
8. What the plan must prove
9. What to record if tools are unavailable

Use these commands when available:

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
