---
to: <%= cwd %>/cypress/integration/forms/<%= feature %>.spec.js
sh: prettier --write <%= cwd %>/cypress/integration/forms/<%= feature %>.spec.js
---
import { updateTestUsers } from "../../support/users";

describe('<%= feature %>', () => {
    before(() => {
        updateTestUsers(Cypress.env('form'))
    })
    beforeEach(() => {
        cy.login();
    })
    it('Change name', { env: { form: '<%= feature %>', currentActor: 'requestor' } },() => {

    });
});