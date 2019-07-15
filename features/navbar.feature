Feature: Visitor Can Navigate via Navbar
    As a visitor,
    In order to navigate to different sections of the site,
    I would like to be able to use a navbar

  Scenario: Visitor Sees Navbar Links on Main Page
    When I visit the site
    Then I should see "Home"
    Then I should see "Login"
    Then I should see "Sign Up"
    Then I should see "Marketplace"
    Then I should see "Forum"

  Scenario: Visitor Clicks on Home
    Given I visit the site
    When I click on "Home"
    Then I should be on the "Florum" page

  Scenario: Visitor Clicks on Login
    Given I visit the site
    When I click on "Login"
    Then I should be on the "Login" page

  Scenario: Visitor Clicks on Sign Up
    Given I visit the site
    When I click on "Sign Up"
    Then I should be on the "Sign Up" page

  Scenario: Visitor Clicks on Marketplace
    Given I visit the site
    When I click on "Marketplace"
    Then I should be on the "Marketplace" page

  Scenario: Visitor Clicks on Forum
    Given I visit the site
    When I click on "Forum"
    Then I should be on the "Forum" page

  