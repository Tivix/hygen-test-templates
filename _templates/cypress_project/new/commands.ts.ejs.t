---
to: <%= cwd %>/<%= project_name %>/cypress/support/commands.ts
---

// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************

Cypress.Commands.add(
  'getByTestId',
  {
    prevSubject: ['optional', 'window', 'document', 'element'],
  },
  (subject, testId, options) => {
    const selector = `[data-cy="${testId}"]`;

    if (subject) {
      cy.wrap(subject).find(selector, options);
    } else {
      cy.get(selector, options);
    }
  },
);