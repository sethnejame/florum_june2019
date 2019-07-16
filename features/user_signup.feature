Feature: User Sign Up
    As a user,
    In order to buy/sell/discuss plants,
    I would like to be able to sign up to Florum

    Background:
        Given I visit the site
        And I click "SIGNUP"

    Scenario: Visitor can sign up for an account
        When I fill the "Email" with "fatbob@gmail.com"
        And I fill the "Password" with "ilovecatfood"
        And I click "Signup"
        Then I should see "Welcome to Florum!"
        