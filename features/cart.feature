Feature: Cart

Background:
  Given I am on https://www.saucedemo.com
  When I fill in "user-name" with "standard_user"
  And I fill in "password" with "secret_sauce"
  Then I click "login-button"

Scenario: Add to cart
  When I click "add-to-cart-sauce-labs-backpack"
  And I should see "REMOVE"

Scenario: Remove to cart
  When I click "add-to-cart-sauce-labs-bike-light"
  And I should see "REMOVE"
  When I click "remove-sauce-labs-bike-light"
