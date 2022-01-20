---
to: <%= cwd %>/cypress/integration/<%= feature %>/<%= file %>/steps.js
sh: prettier --write <%= cwd %>/cypress/integration/<%= feature %>/<%= file %>/steps.js
---
import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';

Given('Precondition', function(){
    NOtIMplemented()
})