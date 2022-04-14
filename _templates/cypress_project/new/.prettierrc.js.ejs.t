---
to: <%= cwd %>/<%= project_name %>/.prettierrc.js
---

module.exports = {
  ...require('@tivix/prettier-config'),
  quoteProps: 'consistent'
};