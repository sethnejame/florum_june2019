Feature: User profile
  "As a user,
  In order to keep track of my general information,
  I would like to to have a profile page"

  Background:
    Given the following user exists
      | name    | location  | about_me             | fav_flora |
      | Fat Bob | stockholm | Just a happy camper! | catnip    |
    And I am logged in as "Fat Bob"

  Scenario: User can review his own profile
    When I visit the site
    And I click "Hello, Fat Bob!"
    Then I should see "Fat Bob's Profile Page"
    Then I should see "stockholm"
    Then I should see "Just a happy camper!"
    Then I should see "catnip"