---
to: <%= cwd %>/<%= project_name %>/cypress.json
---

{
  "baseUrl": "<%= base_url %>",
  "testFiles": "**/*.spec.ts",
  "retries": {
    "runMode": 1
  },
  "videoUploadOnPasses": false,
  "viewportWidth": 1366,
  "viewportHeight": 768
}