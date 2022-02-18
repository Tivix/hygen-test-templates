---
to: <%= cwd %>/cypress/integration/2_login_before.spec.ts
---

import { customLogin, testValidateCookie } from "./utils/test";

// log in only once before spec

describe('before(() => login)', () => {
  before(() => {
    customLogin()
  });

  [1, 2, 3].forEach(id => {
    it(`test ${id}`, testValidateCookie);
  })
});
