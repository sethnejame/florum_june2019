Feature:
"As a visitor,
In order to communicate with other users,
I would like to be able to comment on their posts"

  Background:
    Given the following user exists
    | name     |
    | Fat Bob  |
    | Slim Jim |
    And the following post exists
    | title        | text          | user    |
    | Codeacademy  | Smooth-ride   | Fat Bob |
    And I am logged in as "Slim Jim"
    And I visit the site
    And I click "FLORUM"

  Scenario: User can comment a post
    When I click on "Open"
    And I fill the "Comment" with "This is a great post!"
    And I click "Leave Comment"
    Then I should see "Commenter: Slim Jim"
    And I should see "Comment: This is a great post!"