Feature: User profile
   As a user,
    In order to keep track of my general settings,
    I would like to have a profile

    Background:
        Given the following user exists
        |  email             | password     |  name   |
        |  fatbob@gmail.com  | ilovecatfood | Fat Bob |
        And I am logged in as "Fat Bob"

    Scenario: User Can Log Out
        When I visit the site
        And I click "Hello, Fat Bob!"
        Then I should see "Fat Bobs profile"