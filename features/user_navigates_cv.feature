Feature: User visits home page

  @javascript
  Scenario: User is redirected from home page
    Given I go to the home page and wait to be redirected
    Then I should be on the 1st cv slide
    And I should not be on the 2nd cv slide

  @javascript
  Scenario: User navigates from the first to the second slide
    Given I go to the home page and wait to be redirected
    When I click on the right arrow
    Then I should not be on the 1st cv slide
    And I should be on the 2nd cv slide