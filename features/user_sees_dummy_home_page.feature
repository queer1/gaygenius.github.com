Feature: User sees dummy home page
  Scenario: User visits home page in headless browser
    Given I go to the home page
    Then I should see "Hi, visitor!"

