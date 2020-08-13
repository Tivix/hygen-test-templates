---
to: <%= cwd %>/cypress/integration/<%= feature %>/<%= test_name %>/steps.js
sh: prettier --write <%= cwd %>/cypress/integration/<%= feature %>/<%= test_name %>/steps.js
---
import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';