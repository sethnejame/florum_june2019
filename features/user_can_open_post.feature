Feature: Open up posts
  "As a user,
  In order to interact with a post
  I would like to be able to open it."

  Background:
    Given the following post exists
    | title        | text          | user_name |
    | Codeacademy  | Smooth-ride   | user1     |
    And the following user exists
    | name    | email            | password     |
    | Fat Bob | fatbob@gmail.com | ilovecatfood |
    And I am logged in as "Fat Bob"  
   
  Scenario: Reader can open up posts
    When I visit the site
    And I click "FORUM"
    And I click "Open"
    Then I should see "Title: Codeacademy"
    And I should see "Text: Smooth-ride"
    And I should see "Author: user1"
    