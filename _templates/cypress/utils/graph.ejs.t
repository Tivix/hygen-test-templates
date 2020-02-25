---
to: <%= cwd %>/utils/login_handlers/graphql.js
sh: cd <%= cwd %> && prettier --write <%= cwd %>/utils/login_handlers/graphql.js
skipif: GraphQlLogin, QuickLogin
---

export function GraphQlLogin(email, password, csrf_token) {
    return cy.request({
      url: '/api/graphql/organization/',
      method: 'POST',
      form: false,
      body: {
          csrf_token: csrf_token,
          query: "mutation SigninUserMutation(\n$signinUserInput: SignInInput!\n) {\nsignIn(input: $signinUserInput) {\ntoken\nrefreshToken\nuserType\nclientMutationId\n}\n}",
          variables: {
            signinUserInput: {
              email: email,
              password: password,
              clientMutationId: ""
            }
          }
          },
      })
  }
  
export function QuickLogin(email, password) {
    cy.request({
      url: '/app/organization/login',
      method: 'GET',
      form: false
    }).its('headers')
    .then(headers => {
      const csrf = headers['x-csrf-token']
      GraphQlLogin(email, password, csrf)
      .its('body')
    .then(body => {
      window.localStorage.setItem('awe-auth-token-organization', body.data.signIn.token)
      window.localStorage.setItem('awe-auth-refresh-token-organization', body.data.signIn.refreshToken)
    });
    });
    cy.visit('/')
  }
  
  