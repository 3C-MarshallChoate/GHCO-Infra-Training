# Issue 214 Test Matrix

Use this matrix to review whether the proposed change protects the right infrastructure behavior.

| Case | Setup | Expected Result | Why It Matters |
|---|---|---|---|
| Default disabled | Module called without S3 gateway input | No S3 gateway endpoint planned | Preserves existing behavior |
| Dev enabled | Dev overlay opts in and passes route table ids | One S3 gateway endpoint planned | Confirms requested dev-only behavior |
| Test unchanged | Test overlay remains as-is | No S3 gateway endpoint planned | Protects environment isolation |
| Prod unchanged | Prod overlay remains as-is | No S3 gateway endpoint planned | Protects production defaults |
| Explicit route tables | Dev passes route table ids | Endpoint association is reviewable | Avoids hidden route table discovery |
| Interface endpoints preserved | Existing interface endpoint inputs unchanged | Existing endpoint resources remain | Prevents unrelated networking drift |
| Output available | S3 gateway enabled | Optional endpoint id is exposed | Supports downstream review and integration |
| Validation evidence | fmt, validate, lint, scan, test, plan | Results captured before checkpoint | Keeps human review evidence-based |

## Review Notes

- The matrix is not a substitute for plan review.
- The matrix shows why validation strategist and human reviewer are separate roles.
- Add only the tests needed for Issue 214 during the exercise; do not expand into unrelated network coverage.
