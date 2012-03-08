Feature: User visits home page

  @javascript
  Scenario: User is redirected from home page
    Given I go to the home page
    Then I should be on the first cv slide