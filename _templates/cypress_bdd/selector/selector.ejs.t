---
inject: true
to: <%= cwd %>/cypress/integration/<%= feature %>/selectors.js
append: true
---
export const <%= name %> = <%- value %>;