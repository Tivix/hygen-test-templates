---
inject: true
to: <%= cwd %>/<%= file_name %>
append: true
---

cy.request({
            url:'<%= url %>',
            method: '<%= method %>',
            form: <%= is_form %>,
            body: {}
        }).then((response) => {
            expect(response.status).to.eq(200)
        });