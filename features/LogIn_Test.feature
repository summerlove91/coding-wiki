Feature: Testing login page for Standard, Premium and Admin Users

@STANDARD USER TEST
Scenario: Standard User Login with bad email
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to wrong@standard.com
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Login without password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to standard@standard.com
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Login with bad password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to standard@standard.com
  And I set the password to wrongpassword
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Standard User Successful login
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to standard@standard.com
  And I set the password to sksskdi30!
  When I login to Code Overflow
  Then I am on the home page

@PREMIUM USER TEST
Scenario: Premium User Login without password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to premium@premium.com
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Premium User Login with bad password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to premium@premium.com
  And I set the password to wrongpassword
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Premium User Successful login
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to premiumd@premium.com
  And I set the password to sksskdi30!
  When I login to Code Overflow
  Then I am on the home page

@ADMIN USER TEST
Scenario: Admin User Login without password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to admin@admin.com
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Premium User Login with bad password
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to admin@admin.com
  And I set the password to wrongpassword
  When I login to Code Overflow
  Then I see the error message "Invalid email/password combination"
  And I am on the login page

Scenario: Admin User Successful login
  Given I want to use the browser Firefox
  And I click on Login button
  When I set the user email to admin@admin.com
  And I set the password to password
  When I login to Code Overflow
  Then I am on the home page
