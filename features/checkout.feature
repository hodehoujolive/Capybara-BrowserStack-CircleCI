Feature: Checkout

Background:
  Given I am on https://www.saucedemo.com
  When I fill in "user-name" with "standard_user"
  And I fill in "password" with "secret_sauce"
  And I click "login-button"
  And I click "add-to-cart-sauce-labs-backpack"
  And I am on https://www.saucedemo.com/cart.html
  And I click "checkout"
  Then I should have current link "https://www.saucedemo.com/checkout-step-one.html"

Scenario: Successful checkout
  And I fill in "first-name" with "Jolivé"
  And I fill in "last-name" with "Hodehou"
  And I fill in "postal-code" with "BP : 358 Cotonou Bénin"
  And I click "continue"
  And I should see "Payment Information"
  And I click "finish"
  And I should have css ".pony_express"

Scenario: proceed to the first verification step without the first name field
  And I fill in "last-name" with "Hodehou"
  And I fill in "postal-code" with "BP : 358 Cotonou Bénin"
  And I click "continue"
  Then I should see "Error: First Name is required"

Scenario: proceed to the first verification step without the last name field
  And I fill in "first-name" with "Jolivé"
  And I fill in "postal-code" with "BP : 358 Cotonou Bénin"
  And I click "continue"
  Then I should see "Error: Last Name is required"

Scenario: proceed to the first verification step without the postal code field
  And I fill in "first-name" with "Jolivé"
  And I fill in "last-name" with "Hodehou"
  And I click "continue"
  Then I should see "Error: Postal Code is required"

