Feature: Login Page

Background:
  Given I am on https://www.saucedemo.com

Scenario: Validate Page Elements After Login
  Then I should see "standard_user"
  And I should see "secret_sauce"
  And I should have css ".login_logo"
  And I should see field "user-name"
  And I should see field "password"
  Then I should have button "login-button"

Scenario: Login with valid credentials (standard_user / secret_sauce)
  When I fill in "user-name" with "standard_user"
  And I fill in "password" with "secret_sauce"
  And I click "login-button"
  Then I should have current link "https://www.saucedemo.com/inventory.html"

Scenario: Login with invalid credentials(wrong_username / wrong_password)
  When I fill in "user-name" with "wrong_username"
  And I fill in "password" with "wrong_password"
  And I click "login-button"
  Then I should see "Epic sadface: Username and password do not match any user in this service"
