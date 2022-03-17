---
to: <%= cwd %>/<%= project_name %>/cypress/support/index.d.ts
---

declare namespace Cypress {
  interface Chainable {
    getByTestId<E extends Node = HTMLElement>(
      testId: string,
      options?: Partial<Loggable & Timeoutable & Withinable>,
    ): Chainable<JQuery<E>>;
  }
}