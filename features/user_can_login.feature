Feature: User Log in
    As a user,
    In order to make an order
    I would like to be able to log in

Background:
    Given the following user exists
      |  email             | password     |
      |  fatbob@gmail.com  | ilovecatfood |
    And I visit the site
    And I click "LOGIN"

Scenario: Visitor can log in to application[Hapy path]
    When I fill the "Email" with "fatbob@gmail.com"
    And I fill the "Password" with "password1"
    And I click "LOGIN"
    Then I should see "Signed in successfully"
    
Scenario: Visitor can't log in with invalid credentials[Sad path]
    When I fill the "Email" with ""
    And I fill the "Password" with ""
    And I click the "LOGIN"
    Then I should see "Invalid Email or password"