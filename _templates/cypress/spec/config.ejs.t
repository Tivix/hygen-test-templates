---
inject: true
to: <%= cwd %>/cypress.json
sh: prettier --write <%= cwd %>/cypress.json
skipif: "ignoreTestFiles"
before: ","
after: "{"
---

"ignoreTestFiles": ["*selectors.js"],