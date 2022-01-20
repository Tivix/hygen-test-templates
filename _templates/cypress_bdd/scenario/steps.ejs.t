---
to: <%= cwd %>/cypress/integration/<%= feature %>/<%= file %>/steps.js
sh: prettier --write <%= cwd %>/cypress/integration/<%= feature %>/<%= file %>/steps.js
---
import { Before, Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
Before(function(){
    # preconditions that shouldn't be a part of feature file
})
Given('Precondition', function(){
    NOtIMplemented()
})