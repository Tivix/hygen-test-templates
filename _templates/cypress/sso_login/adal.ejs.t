---
inject: true
to: <%= cwd %>/<%= file_name %>.json
append: true
---

export const adalConfig = {
  tenant: 'your azure tenant id',
  clientId: 'The client id of your frontend application',
  endpoints: {
    api: 'Resource id of the api you would like to consume using adal',
  },
  redirectUri: 'http://yourhost/signin_url',
};

export const authContext = new AuthenticationContext(adalConfig);