---
inject: true
to: <%= cwd %>/cypress/support/commands.js
sh: prettier --write <%= cwd %>/cypress/support/commands.js
skipif: "Cypress.Commands.add('setSession'"
append: true
---


Cypress.Commands.add('setWfpSession', function () {

  const options = {
    username: Cypress.env('username'),
    password: Cypress.env('password'),
    loginUrl: Cypress.env('appUrl'),
    postLoginSelector: '#app-root',
    headless: true,
    logs: false
  }
  cy.task('AzureAdSingleSignOn', options).then(result => {
    cy.log(result)
    cy.clearCookies()
    result.localStorage.forEach(entry => {
      window.localStorage.setItem(entry.key, entry.value)
    })
    result.cookies.forEach(cookie => {
      cy.setCookie(cookie.name, cookie.value, {
        domain: cookie.domain,
        expiry: cookie.expires,
        httpOnly: cookie.httpOnly,
        path: cookie.path,
        secure: cookie.secure
      })
      Cypress.Cookies.preserveOnce(cookie.name)
    })
  })
})