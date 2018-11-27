Feature: Testing login page for Standard, Premium and Admin Users

@STANDARD USER TEST
Scenario: Standard User Login with bad email
  Given I navigate homepage using Firefox browser
  And I click on Login button and wait for the log in page to display
  When I set the user email to wrong@standard.com
  When I set the user password to password
  When I login to Code Overflow
  Then I see the error message

Scenario: Standard User Login without password
  Given I am already on log in page
  When I set the user email to standard@standard.com
  And I set the user password to empty
  And I login to Code Overflow
  Then I see the error message

Scenario: Standard User Login with bad password
  Given I am already on log in page
  When I set the user email to standard@standard.com
  And I set the password to wrongpassword
  And I login to Code Overflow
  Then I see the error message

Scenario: Standard User Successful login
  Given I am already on log in page
  When I set the user email to standard@standard.com
  And I set the password to password
  When I login to Code Overflow
  Then I am on the homepage
  And I sign out

@PREMIUM USER TEST
Scenario: Premium User Login without password
  Given I navigate to homepage
  And I click on Login button and wait for the log in page to display
  When I set the user email to premium@premium.com
  And I set the user password to empty
  And I login to Code Overflow
  Then I see the error message

Scenario: Premium User Login with bad password
  Given I am already on the log in page
  When I set the user email to premium@premium.com
  And I set the password to wrongpassword
  When I login to Code Overflow
  Then I see the error message

Scenario: Premium User Successful login
  Given I am already on the log in page
  When I set the user email to premiumd@premium.com
  And I set the password to password
  When I login to Code Overflow
  Then I am on the homepage
  And I sign out

@ADMIN USER TEST
Scenario: Admin User Login without password
  Given I navigate to homepage
  And I wait for the log in page to display
  When I set the user email to admin@admin.com
  And I set the user password to empty
  When I login to Code Overflow
  Then I see the error message

Scenario: Admin User Login with bad password
  Given I am already on the log in page
  When I set the user email to admin@admin.com
  And I set the password to wrongpassword
  When I login to Code Overflow
  Then I see the error message

Scenario: Admin User Successful login
  Given I am already on the log in page
  When I set the user email to admin@admin.com
  And I set the password to password
  When I login to Code Overflow
  Then I am on the homepage
