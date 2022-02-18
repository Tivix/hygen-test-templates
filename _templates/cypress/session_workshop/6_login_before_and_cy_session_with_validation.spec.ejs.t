---
to: <%= cwd %>/cypress/integration/6_login_before_and_cy_session_with_validation.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// https://docs.cypress.io/api/commands/session

const login = (() => {
  cy.session(
    'login', 
    () => {
      customLogin()
    },
    {
      validate() {
        cy.url().then(cy.log)
        expect(Cypress._.sample([true, true, true, false])).to.be.true
      },
    }
  )  
});

describe('beforeEach(() => cy.session with validation)', () => {
  // 'experimentalSessionSupport' === true !
  Cypress.config('experimentalSessionSupport' as any, true)

  beforeEach(() => {
    login()
    // always cy.visit before each:
    cy.visit('/')
  });

  [1, 2, 3, 4, 5].forEach(id => {
    it(`test ${id}`, () => {
      testValidateCookie()
      if (id === 2) {
        cy.clearCookies()
      }
      cy.getCookies().then(console.log)
    });
  })
});
