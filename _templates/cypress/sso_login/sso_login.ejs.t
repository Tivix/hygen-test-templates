---
inject: true
to: <%= cwd %>/<%= file_name %>
append: true
---

import { authContext, adalConfig } from '../../your-project/src/adalConfig';

export function doLogin() {
  // getCachedToken also does an expiration check so we know for sure the tokens are usable
  if (!authContext.getCachedToken(adalConfig.endpoints.api) || !authContext.getCachedToken(adalConfig.clientId)) {
    cy.request({
      method: 'POST',
      url: 'https://login.microsoftonline.com/sagetst.onmicrosoft.com/oauth2/token',
      form: true,
      body: {
        client_secret: Cypress.env('CLIENT_SECRET'),
        grant_type: 'client_credentials',
        resource: adalConfig.endpoints.api,
        client_id: Cypress.env('CLIENT_ID'),
      },
    }).then(response => {
      // Store the token in the location where adal expects it
      authContext._saveItem(
        authContext.CONSTANTS.STORAGE.ACCESS_TOKEN_KEY + adalConfig.endpoints.api,
        response.body.access_token
      );
      authContext._saveItem(
        authContext.CONSTANTS.STORAGE.ACCESS_TOKEN_KEY + adalConfig.clientId,
        response.body.access_token
      );
      authContext._saveItem(
        authContext.CONSTANTS.STORAGE.EXPIRATION_KEY + adalConfig.endpoints.api,
        response.body.expires_on
      );
      authContext._saveItem(
        authContext.CONSTANTS.STORAGE.EXPIRATION_KEY + adalConfig.clientId,
        response.body.expires_on
      );
      authContext._saveItem(
        authContext.CONSTANTS.STORAGE.TOKEN_KEYS,
        [adalConfig.clientId, adalConfig.endpoints.api].join(authContext.CONSTANTS.RESOURCE_DELIMETER) +
          authContext.CONSTANTS.RESOURCE_DELIMETER
      );
    });
  }
}