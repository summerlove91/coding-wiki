
Scenario: Standard User Signup with no user name
  Given ('I want to use the browser Firefox') do
    @SignupPage = SignupPage.new(@browser)
    @SignupPage.visit
  end

  And('I click on Signup button') do
    @SignupPage.clickSignupTab
  end

  When('I set the username to blank') do
    @SignupPage.enterUsername(' ')
  end

  When('I set the user email to {test@test.com}') do
    @SignupPage.enterEmail('test@test.com')
  end

  When('I set the password to password') do
    @SignupPage.enterPassword('password')
  end

  When('I set the password confirmation to {password}') do
    @SignupPage.enterPassword('password')
  end

  Then('I see the error message {string}') do |string|
    @SignupPage.verifyErrorMessage
  end

  Then('I am on the Signup page') do
    @SignupPage.verifySignupPage
  end

Scenario: Standard User Signup with bad email
  Given ('I want to use the browser Firefox') do
    @SignupPage = SignupPage.new(@browser)
    @SignupPage.visit
  end

  When('I set the username to blank') do
    @SignupPage.enterUsername('test user')
  end

  When('I set the user email to {test@test.com') do
    @SignupPage.enterEmail('')
  end

  When('I set the password to password') do
    @SignupPage.enterPassword('password')
  end

  When('I set the password confirmation to password') do
    @SignupPage.enterPassword('password')
  end

  Then('I see the error message {string}') do |string|
    @SignupPage.verifyErrorMessage
  end

  Then('I am on the Signup page') do
    @SignupPage.verifySignupPage
  end

Scenario: Standard User Signup with bad password
  Given ('I want to use the browser Firefox') do
    @SignupPage = SignupPage.new(@browser)
    @SignupPage.visit
  end

  When('I set the username to blank') do
    @SignupPage.enterUsername('test user')
  end

  When('I set the user email to {test@test.com}') do
    @SignupPage.enterEmail('test@test.com')
  end

  When('I set the password empty') do
    @SignupPage.enterPassword('')
  end

  When('I set the password confirmation to password') do
    @SignupPage.enterPassword('')
  end

  Then('I see the error message {string}') do |string|
    @SignupPage.verifyErrorMessage
  end

  Then('I am on the Signup page') do
    @SignupPage.verifySignupPage
  end

Scenario: Successful standard user Signup
  Given ('I want to use the browser Firefox') do
    @SignupPage = SignupPage.new(@browser)
    @SignupPage.visit
  end

  When('I set the username to blank') do
    @SignupPage.enterUsername('test user')
  end

  When('I set the user email to {test@test.com}') do
    @SignupPage.enterEmail('test@test.com')
  end

  When('I set the password to {password}') do
    @SignupPage.enterPassword('password')
  end

  When('I set the password confirmation to {password}') do
    @SignupPage.enterPassword('password')
  end

  Then('I am on the home logout page') do
    @SignupPage.verifyHomePageHeader
  end
