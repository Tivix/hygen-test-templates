---
to: <%= cwd %>/cypress/integration/4_login_before_and_cookies_preserve_once.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// log in only once before spec

describe('Cypress.Cookies.preserveOnce', () => {
  before(() => {
    customLogin()
  });

  beforeEach(() => {
    // preserve always:
    // Cypress.Cookies.preserveOnce('refresh_token')
  });

  [1, 2, 3].forEach(id => {
    it(`test ${id}`, () => {
      testValidateCookie()
      //preserve in only one test:
      if (id === 1) Cypress.Cookies.preserveOnce('refresh_token')
    });
  })
});
