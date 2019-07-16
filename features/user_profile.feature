Feature: User profile
    As a user,
    In order to keep track of my general settings,
    I would like to have a profile

    Background:
        Given the following user exists
        |  name   |
        | Fat Bob |
        And I am logged in as "Fat Bob"

    Scenario: User can review his own profile
        When I visit the site
        And I click "Hello, Fat Bob!"
        Then I should see "Fat Bobs Profile"
        Then I should see "Name: Fat Bob"
        Then I should see "Email: fatbob@gmail.com"
        Then I should see "My Plants: "
        Then I should see "My Location: "
