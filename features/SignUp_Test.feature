Feature: Testing for signup page

Scenario: Standard User Signup with no user name
  Given I navigate homepage using Firefox browser
  And I click on Signup button and wait for the sign up page to display
  When I set the username empty
  When I set the user email test@test.com
  When I set the user password to password
  When I set the user password confirmation to password
  And I click on sign up button
  Then I see the error message

Scenario: Standard User Signup with bad email
  Given I am already on sign up page
  When I set the username to Test User
  When I set the user email to dd
  When I set the user password to password
  When I set the user password confirmation to password
  And I click on sign up button
  Then I see the error message

Scenario: Standard User Signup with bad password
  Given I am already on sign up page
  When I set the username to Test User
  When I set the user email to test@test.com
  When I set the user password to wrong
  When I set the user password confirmation to password
  And I click on sign up button
  Then I see the error message

Scenario: Standard User Signup with valid user email and password
  Given I am already on sign up page
  When I set the username to Test User
  When I set the user email to test@test.com
  When I set the user password to password
  When I set the user password confirmation to password
  Then I am on the homepage
