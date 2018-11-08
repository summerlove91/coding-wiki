
Scenario: Standard User Login with bad email
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  And("I click on Login button") do
    @LogInPage.clickLoginTab
  end

  When("I set the user email to wrong@standard.com") do
    @LogInPage.enterEmail("wrong@standard.com")
  end

  When("I login to Code Overflow") do
    @LogInPage.clickLoginButton
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Standard User Login with no password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to standard@standard.com") do
    @LogInPage.enterEmail("standard@standard.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword(" ")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Standard User Login with bad password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to standard@standard.com") do
    @LogInPage.enterEmail("standard@standard.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword("wrongpassword")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Standard User successful login
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to standard@standard.com") do
    @LogInPage.enterEmail("standard@standard.com")
  end

  When("I set the password to correct password") do
    @LogInPage.enterPassword("sksskdi30!")
  end

  Then("I am on the login page") do
    @LogInPage.verifyHomePageHeader
  end

Scenario: Premium User Login without password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  And("I click on Login button") do
    @LogInPage.clickLoginTab
  end

  When("I set the user email to premium@premium.com") do
    @LogInPage.enterEmail("premium@premium.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword(" ")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Premium User Login with bad password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to premium@premium.com") do
    @LogInPage.enterEmail("premium@premium.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword("wrongpassword")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Premium User successful login
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to premium@premium.com") do
    @LogInPage.enterEmail("premium@premium.com")
  end

  When("I set the password to correct password") do
    @LogInPage.enterPassword("sksskdi30!")
  end

  Then("I am on the login page") do
    @LogInPage.verifyHomePageHeader
  end

Scenario: Admin User Login without password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  And("I click on Login button") do
    @LogInPage.clickLoginTab
  end

  When("I set the user email to admin@admin.com") do
    @LogInPage.enterEmail("admin@admin.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword(" ")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Admin User Login with bad password
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to admin@admin.com") do
    @LogInPage.enterEmail("admin@admin.com")
  end

  When("I set the password to wrongpassword") do
    @LogInPage.enterPassword("wrongpassword")
  end

  Then("I see the error message {string}") do |string|
    @LogInPage.verifyErrorMessage
  end

  Then("I am on the login page") do
    @LogInPage.verifyLogInPage
  end

Scenario: Admin User successful login
  Given ("I want to use the browser Firefox") do
    @LogInPage = LogInPage.new(@browser)
    @LogInPage.visit
  end

  When("I set the user email to admin@admin.com") do
    @LogInPage.enterEmail("admin@admin.com")
  end

  When("I set the password to correct password") do
    @LogInPage.enterPassword("sksskdi30!")
  end

  Then("I am on the login page") do
    @LogInPage.verifyHomePageHeader
  end
