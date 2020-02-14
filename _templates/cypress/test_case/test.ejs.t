---
inject: true
to: <%= cwd %>/<%= test_file %>.js
before: it
after: before
---

    it('<%= name %>', function() {
        // test body
    });