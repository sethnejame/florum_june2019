Feature: User profile
    As a user,
    In order to keep track of my general information,
    I would like to be able to create a profile

    Background:
        Given the following user exists
        |  name   |
        | Fat Bob |
        And I am logged in as "Fat Bob"

    Scenario: User can review his own profile
        When I visit the site
        Then I should see "CREATE PROFILE"
        And I click "CREATE PROFILE"
        Then I should see "New Profile"
        Then I should see "City"
        And I fill the "profile[city]" with "Stockholm"
        And I fill the "profile[my_plants]" with "Catnip"
        And I fill the "profile[favorite_flora]" with "Anything green"
        And I fill the "profile[latest_posts]" with "Placeholder"
        And I fill the "profile[about_me]" with "I like food. Alot."
        And I fill the "profile[profile_pic]" with "Placeholder"
        And I click "Create Profile"
        Then I should see "Profile was successfully created."