Feature: Create articles
  As a visitor
  In order to discuss plants with others 
  I would like to be able to post to the forum

Background:
    Given I visit the 'Forum' page
    And I click 'New Post'

Scenario: Successfully create an post
    When I fill in 'Title' with 'Flower Power'
    And I fill in 'Text' with 'Flower Power to the people!!'
    And I click 'Post'
    Then I should be on 'Flower Power' page
    And I should see 'Your post was succefully created'
    And I should see 'Flower Power'
    And I should see 'Flower Power to the people!!'

Scenario: Publisher doesn't enter a title for the post [Sad Path]
    When I fill in 'Text' with 'Flower Power to the people!!'
    And I click 'Post'
    Then I should see 'Title can't be blank'