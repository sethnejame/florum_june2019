Feature: User Log Out
  "As a user,
  In order to sign out of my account
  I would like to have a log out function"

  Background:
    Given the following user exists
      | email            | password     | name    |
      | fatbob@gmail.com | ilovecatfood | Fat Bob |
    And I am logged in as "fatbob@gmail.com"

  Scenario: User Can Log Out
    When I visit the site
    Then I should see "Hello, Fat Bob!"
    And I should not see "LOGIN"
    And I should not see "SIGN UP"
    And I click "LOGOUT"
    Then I should see "Signed out successfully."
    And I should see "LOGIN"
    And I should see "SIGN UP"
