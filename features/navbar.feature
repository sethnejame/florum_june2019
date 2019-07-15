Feature: Visitor Can Navigate via Navbar
    As a visitor,
    In order to navigate to different sections of the site,
    I would like to be able to use a navbar

  Scenario: Reader can comment on articles
    When I visit the site
    Then I should see "Menu"
    Then I should see "Home"
    Then I should see "Login"
    Then I should see "Sign up"
    Then I should see "Marketplace"
    Then I should see "Forum"