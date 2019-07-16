Feature: Visitor Can Navigate via Navbar
    As a visitor,
    In order to navigate to different sections of the site,
    I would like to be able to use a navbar

  Scenario: Visitor Sees Navbar Links on Main Page
      Given I visit the site
      Then I should see "HOME"
      Then I should see "LOGIN"
      Then I should see "SIGN UP"
      Then I should see "MARKETPLACE"
      Then I should see "FORUM"
  