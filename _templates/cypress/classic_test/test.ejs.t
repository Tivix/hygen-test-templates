---
to: <%= cwd %>/<%= feature %>/<%= test_name %>.js
---
import * as slctr from './selectors';

describe('<%= feature %>', function() {
    before(function() {
    # clean state before tests
    });
    after(function() {
    # finishers
    });
    it('<%= test_name %>', function() {
    #test body
    });
});