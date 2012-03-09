Feature: User visits home page

  @javascript
  Scenario: User is redirected from home page
    Given I go to the home page
    Then I should be on the first cv slide
    And I should see "José Capó"

  @javascript
  Scenario: User navigates from the first to the second slide
    Given I go to the home page
    When I click on the right arrow
    And I should see "MIT-educated"