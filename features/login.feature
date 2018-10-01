Feature: Testing for login page

Scenario: Standard User Login without password

  Given I want to use the browser Firefox
  When I set the user email to standard@standard.com
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Login with bad password

  Given I want to use the browser Firefox
  When I set the user email to standard@standard.com
  And I set the password to testuser2
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Admin User Successful login
  Given I want to use the browser Firefox
  When I set the user email to zdy@yzmlvo.hvz
  And I set the password to password
  When I login to Code Overflow
  Then I am on the home page

Scenario: Standard User Successful login

  Given I want to use the browser Firefox
  When I set the user email to standard@standard.com
  And I set the password to sksskdi30!
  When I login to Code Overflow
  Then I am on the home page
