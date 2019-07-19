Feature: Basic Florum Categories
  "As a user,
  In order to sort through various plant topics,
  I would like to see a main forum page with separate categories"

  Background:
    Given I visit the site

  Scenario: Visitor can see basic forum categories
    When I click "FLORUM"
    Then I should see "MARKETPLACE"
    Then I should see "GENERAL"
    Then I should see "GROWTH & CARE"
    Then I should see "PLANT NEWS"