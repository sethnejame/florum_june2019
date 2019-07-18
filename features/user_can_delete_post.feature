Feature:
"As a user,
In order to get rid of a wrong post,
I would like to able to delete it."

  Background:
    Given the following post exists
    | title        | text          | user_name    |
    | Codeacademy  | Smooth-ride   | hackerman    |
    And the following user exists
    | name    | email            | password     |
    | Fat Bob | fatbob@gmail.com | ilovecatfood |
    And I am logged in as "Fat Bob"  

  Scenario: Reader can open up posts
    When I visit the site
    And I click "FORUM"
    And I click "Delete"
    Then I should not see "Title: Codeacademy"
    And I should not see "Text: Smooth-ride" 