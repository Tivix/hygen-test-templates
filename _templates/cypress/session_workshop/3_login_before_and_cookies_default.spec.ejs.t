---
to: <%= cwd %>/cypress/integration/3_login_before_and_cookies_default.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// log in only once before spec

describe('Cypress.Cookies.defaults', () => {
  Cypress.Cookies.defaults({
    preserve: [
      'refresh_token' // example name of the cookie
    ]
  })

  before(() => {
    customLogin()
  });

  [1, 2, 3].forEach(id => {
    it(`test ${id}`, testValidateCookie);
  })
});
