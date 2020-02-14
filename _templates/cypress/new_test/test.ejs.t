---
to: <%= cwd %>/cypress/integration/<%= feature %>/<%= test_name %>.js
---
/// <reference types="Cypress" />
import * as select from './selectors';

describe('<%= feature %>', function() {
    before(function() {
    // clean state before tests
    });
    after(function() {
    // finishers
    });
    it('<%= test_name %>', function() {
    // test body
    });
});