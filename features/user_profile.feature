Feature: User profile
    As a user,
    In order to keep track of my general information,
    I would like to to have a profile page

    Background:
        Given the following user exists
        |  name   |
        | Fat Bob |
        And I am logged in as "Fat Bob"

    Scenario: User can review his own profile
        When I visit the site
        And I click "Hello, Fat Bob!"
        Then I should see "Fat Bob's Profile Page"