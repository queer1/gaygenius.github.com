Feature: User visits home page

  @javascript
  Scenario: User is redirected from home page
    Given I go to the home page and wait to be redirected
    Then I should be on the first cv slide
    And I should not see the second cv slide

  @javascript
  Scenario: User navigates from the first to the second slide
    Given I go to the home page and wait to be redirected
    When I click on the right arrow
    And I should see the second cv slide