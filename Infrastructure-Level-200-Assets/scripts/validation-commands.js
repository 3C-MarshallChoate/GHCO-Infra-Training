const commands = [
  "terraform fmt -check -recursive",
  "terraform -chdir=environments/dev init -backend=false",
  "terraform -chdir=environments/dev validate",
  "tflint --recursive",
  "checkov -d .",
  "terraform test",
  "terraform -chdir=environments/dev plan -var-file=../../tests/fixtures/dev.tfvars -out=dev-s3-endpoint.tfplan",
  "terraform -chdir=environments/dev show dev-s3-endpoint.tfplan"
];

console.log("Run only the commands available in the local environment:");
for (const command of commands) {
  console.log(`- ${command}`);
}
console.log("Never run terraform apply during this workshop.");
