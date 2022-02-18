---
to: <%= cwd %>/cypress/integration/1_login_before_each.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// log in before each test

describe('beforeEach(() => login)', () => {
  beforeEach(() => {
    customLogin()
  });

  [1, 2, 3].forEach(id => {
    it(`test ${id}`, testValidateCookie);
  })
});
