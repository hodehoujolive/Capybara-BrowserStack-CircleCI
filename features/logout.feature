Feature: Logout

Background:
  Given I am on https://www.saucedemo.com
  When I fill in "user-name" with "standard_user"
  And I fill in "password" with "secret_sauce"
  Then I click "login-button"

Scenario: Successful Logout
  When I click "react-burger-menu-btn"
  And I click "logout_sidebar_link"
  Then I should have css ".login_logo"
