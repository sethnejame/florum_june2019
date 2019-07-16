Feature: Create articles
  As a visitor
  In order to discuss plants with others 
  I would like to be able to post to the forum

  Background:
    Given I visit the site
    And I click "FORUM"
    And I click "New Post"

  Scenario: Successfully create an post
    When I fill the "Title" with "Flower Power"
    And I fill the "Text" with "Flower Power to the people!!"
    And I click "Post"
    Then I should see "Your post was succefully created"
    And I should see "Flower Power"
    And I should see "Flower Power to the people!!"