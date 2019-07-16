Feature: User Sign Up
    As a user,
    In order to buy/sell/discuss plants,
    I would like to be able to sign up to Florum

    Background:
        Given I visit the site
        

    Scenario: Visitor can sign up for an account
        When I click "SIGN UP"
        And I fill the "Name" with "Fat Bob"
        And I fill the "Email" with "fatbob@gmail.com"
        And I fill the "Password" with "ilovecatfood"
        And I click "Sign up"
        Then I should see "Welcome to Florum!"
            