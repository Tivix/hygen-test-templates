---
to: <%= cwd %>/cypress/integration/<%= feature %>/<%= file %>.feature
---

Feature: <%= feature %>
  Scenario: <%= scenario %>
    Given Precondition step
    When Action step
    Then Verification step