# Maintainer Handoff

This handoff is intentionally partial. Use it to separate confirmed facts from assumptions during the Level 200 infrastructure exercise.

## Known Context

- The network module is shared by multiple environments.
- Existing interface endpoint behavior should remain unchanged.
- Environment overlays should make opt-in behavior explicit.
- Dev is the only target environment for Issue 214.
- Route table associations must be reviewable before any apply in a real workflow.

## Known Constraints

- Do not run `terraform apply` in the workshop.
- Do not change remote state or backend configuration.
- Do not change provider versions as part of Issue 214.
- Do not enable new infrastructure in test or prod.

## Unknowns To Flag

- Which route tables would be selected in a real AWS account.
- Whether the organization requires additional endpoint policies.
- Whether central networking owns route table changes outside dev.
- Whether production rollout needs a separate approval path.
