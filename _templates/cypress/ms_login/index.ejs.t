---
append: true
to: <%= cwd %>/cypress/plugins/index.js
sh: prettier --write <%= cwd %>/cypress/plugins/index.js
skipif: "AzureAdSingleSignOn"
---

const AzureAdSingleSignOn = require('./azure-ad-sso/plugin').AzureAdSingleSignOn
module.exports = (on, config) => {
  on('task', { AzureAdSingleSignOn: AzureAdSingleSignOn })
  // `on` is used to hook into various events Cypress emits
  // `config` is the resolved Cypress config
}