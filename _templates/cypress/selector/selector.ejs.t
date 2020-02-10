---
inject: true
to: <%= cwd %>/<%= path %>/selectors.js
append: true
---
export const <%= selector_name %> = <%- selector_value %>