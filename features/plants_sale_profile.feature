Feature: Plant selling
  "As a user,
  In order to share my plants for sale,
  I would like to be able to add a listing for them to my profile page"

  Background:
    Given the following user exists
      | name    | location  | about_me             | fav_flora |
      | Fat Bob | stockholm | Just a happy camper! | catnip    |
    And I am logged in as "Fat Bob"
    And I visit the site
    And I click "Hello, Fat Bob!"
    And I click "Sell plants"

  Scenario: User successfully put up plant for sale
    When I fill the "Plant name" with "Lovely Lily"
    And I fill the "Describe your plant" with "Cutest Lily in Stockholm"
    And I fill the "Price" with "50"
    And I fill the "Category" with "Flower"
    And I fill the "Quantity" with "1"
    And I click "Sell"
    And I should be on Profile page
    And I should see "Your plant is now for sale!"
    And I should see "Lovely Lily"
    And I should see "Cutest Lily in Stockholm"
    And I should see "50"