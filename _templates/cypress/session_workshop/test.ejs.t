---
to: <%= cwd %>/cypress/integration/utils/test.ts
---

export const testValidateCookie = () => {
  cy.getCookie('refresh_token').should('not.be.null')
}

export const customLogin = () => {
  // custom login cypress code
}
