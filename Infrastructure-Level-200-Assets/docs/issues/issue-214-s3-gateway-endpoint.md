# Issue 214: Add Optional S3 Gateway Endpoint Support

## Background

The shared network module already supports interface endpoints for selected AWS services. The platform team now needs an optional S3 gateway endpoint so private workloads can reach S3 without public internet routing.

The first rollout should be limited to `dev`.

## Acceptance Criteria

- Add opt-in S3 gateway endpoint support to the shared network module.
- Keep the default disabled so existing environments do not change.
- Enable the S3 gateway endpoint in `dev` only.
- Route table associations must be passed explicitly.
- Do not change existing interface endpoint behavior.
- Expose the optional S3 gateway endpoint id as an output.
- Add or update focused test coverage for enabled and disabled behavior.
- Validation must include format, validate, lint or static review, security review, Terraform test, and plan review.

## Out Of Scope

- `terraform apply`
- provider upgrades
- remote state changes
- broad module restructuring
- automatic route table discovery from live AWS
- changes to `test` or `prod`
- branch, push, pull request, merge, deploy, or release workflow

## Review Notes

- The safest default is no new endpoint unless the environment explicitly opts in.
- Dev is the only environment that should opt in during the exercise.
- The plan review should show explicit route table associations for the gateway endpoint.
