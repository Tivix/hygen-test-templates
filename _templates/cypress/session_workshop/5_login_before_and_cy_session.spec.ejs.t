---
to: <%= cwd %>/cypress/integration/5_login_before_and_cy_session.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// https://docs.cypress.io/api/commands/session

const login = (() => {
  cy.session(
    'login', 
    () => {
      customLogin()
    }
  )
});

describe('beforeEach(() => cy.session)', () => {
  // 'experimentalSessionSupport' === true !
  Cypress.config('experimentalSessionSupport' as any, true)

  beforeEach(() => {
    login()
    // always cy.visit before each:
    cy.visit('/')
  });

  [1, 2, 3].forEach(id => {
    it(`test ${id}`, () => {
      testValidateCookie()
      if (id === 2) {
        cy.clearCookies()
      }
      cy.getCookies().then(console.log)
    });
  })
});
