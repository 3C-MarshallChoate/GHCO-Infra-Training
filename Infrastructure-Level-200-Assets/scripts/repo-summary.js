const path = require("node:path");

const repoRoot = path.basename(process.cwd());

console.log(`Repo: ${repoRoot}`);
console.log("Domain: Terraform shared network module");
console.log("Issue: Add optional S3 gateway endpoint support for dev only");
console.log("Key paths:");
console.log("- modules/network");
console.log("- environments/dev");
console.log("- environments/test");
console.log("- environments/prod");
console.log("- tests/network.tftest.hcl");
console.log("- docs/issues/issue-214-s3-gateway-endpoint.md");
