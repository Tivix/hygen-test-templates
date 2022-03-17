---
to: <%= cwd %>/<%= project_name %>/cypress/integration/smoke_test.spec.ts
---

describe('Smoke test', () => {
  it('visit base URL', () => {
      cy.visit('/');
  });
});
