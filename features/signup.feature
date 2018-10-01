Feature: Testing for signup page

Scenario: Standard User Signup with no user name

  Given I want to use the browser Firefox
  When I set the user name empty
  When I set the user email 'test@test.com'
  When I set the user password to password
  When I set the user password confirmation to password
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Signup with bad email

  Given I want to use the browser Firefox
  When I set the user name to Test User
  When I set the user email to dd
  When I set the user password to password
  When I set the user password confirmation to password
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Signup with bad password

  Given I want to use the browser Firefox
  When I set the user name to Test User
  When I set the user email to test@test.com
  When I set the user password to wrong
  When I set the user password confirmation to password
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Signup with valid user email and password

  Given I want to use the browser Firefox
  When I set the user name to Test User
  When I set the user email to test@test.com
  When I set the user password to password
  When I set the user password confirmation to password
  Then I am on the homepage.
