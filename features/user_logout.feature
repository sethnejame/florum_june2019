Feature: User Log Out
    As a user,
    In order to sign out of my account
    I would like to have a log out function

Background:
    Given the following user exists
      |  email             | password     |  name   |
      |  fatbob@gmail.com  | ilovecatfood | Fat Bob |
    When I visit the site
    And I am logged in as "Fat Bob"

Scenario: User Can Log Out
    Then I should see "Logged in as Fat Bob"
    And I should not see "LOGIN"
    And I should not see "SIGN UP"
    And I click "LOGOUT"
    Then I should see "Catch ya later, brah!"
