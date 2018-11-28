require 'selenium-webdriver'
require 'watir'

driver = Selenium::WebDriver.for :firefox

Given ("I navigate to homepage using Firefox browser") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2)
  wait.until{driver.get 'http://localhost:3000'}
end

And("I click on Login button and wait for the log in page to display") do
  signinButton = driver.find_elements(:class, "sign-in-button")
  signinButton.click
  wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
  wait.until {driver.find_elementss(:class => 'sign-up-box') }
end

When("When I set the username empty") do
  signupName = driver.find_elements(:class, "sign-up-name-input")
  signupName.send_keys('')
end

When("When I set the user email {string}") do
  signupEmail = driver.find_elements(:class, "sign-up-email-input")
  signupEmail.send_keys('test@test.com')
end

When("When I set the user password to {string}") do
  signupPassword = driver.find_elements(:class, "sign-up-password-input")
  signupPassword.send_keys('password')
end

When("When I set the user password confirmation to {string}") do
  signupPasswordConfirmation = driver.find_element(:class, "sign-up-password-confirmation-input")
  signupPasswordConfirmation.send_keys('password')
end

And("And I click on sign up button") do
  signupSubmitButton = driver.find_element(:link_text, "Sign up")
  signupSubmitButton.click
end

Then("Then I see the error message") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
  wait.until {driver.find_element(:tag_name, "alert") }
end


##SIGNUP WITH BAD EMAIL ######################

Given ("I am already on sign up page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2)
  wait.until{driver.find_elements(:class => 'sign-up-box')}
end

When("When I set the username to {string}") do
  signupName = driver.find_elements(:class, "sign-up-name-input")
  signupName.send_keys('Test User')
end

When("When I set the user email {string}") do
  signupEmail = driver.find_elements(:class, "sign-up-email-input")
  signupEmail.send_keys('dd')
end

When("When I set the user password to {string}") do
  signupPassword = driver.find_elements(:class, "sign-up-password-input")
  signupPassword.send_keys('password')
end

When("When I set the user password confirmation to {string}") do
  signupPasswordConfirmation = driver.find_elements(:class, "sign-up-password-confirmation-input")
  signupPasswordConfirmation.send_keys('password')
end

And("And I click on sign up button") do
  signupSubmitButton = driver.find_element(:link_text, "Sign up")
  signupSubmitButton.click
end

Then("Then I see the error message") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
  wait.until {driver.find_element(:tag_name, "alert") }
end


##SIGNUP WITH BAD PASSWORD ######################

Given ("I am already on sign up page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2)
  wait.until{driver.find_elementss(:class => 'sign-up-box')}
end

When("When I set the username to {string}") do
  signupName = driver.find_elements(:class, "sign-up-name-input")
  signupName.send_keys('Test User')
end

When("When I set the user email {string}") do
  signupEmail = driver.find_elements(:class, "sign-up-email-input")
  signupEmail.send_keys('test@test.com')
end

When("When I set the user password to {string}") do
  signupPassword = driver.find_elements(:class, "sign-up-password-input")
  signupPassword.send_keys('wrong')
end

When("When I set the user password confirmation to {string}") do
  signupPasswordConfirmation = driver.find_elements(:class, "sign-up-password-confirmation-input")
  signupPasswordConfirmation.send_keys('wrong')
end

And("And I click on sign up button") do
  signupSubmitButton = driver.find_element(:link_text, "Sign up")
  signupSubmitButton.click
end

Then("Then I see the error message") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
  wait.until {driver.find_element(:tag_name, "alert") }
end


##SUCCESSFUL SIGNUP ######################

Given ("I am already on sign up page") do
  wait = Selenium::WebDriver::Wait.new(:timeout => 2)
  wait.until{driver.find_elementss(:class => 'sign-up-box')}
end

When("When I set the username to {string}") do
  signupName = driver.find_elements(:class, "sign-up-name-input")
  signupName.send_keys('Test User')
end

When("When I set the user email {string}") do
  signupEmail = driver.find_elements(:class, "sign-up-email-input")
  signupEmail.send_keys('test@test.com')
end

When("When I set the user password to {string}") do
  signupPassword = driver.find_elements(:class, "sign-up-password-input")
  signupPassword.send_keys('password')
end

When("When I set the user password confirmation to {string}") do
  signupPasswordConfirmation = driver.find_elements(:class, "sign-up-password-confirmation-input")
  signupPasswordConfirmation.send_keys('password')
end

And("And I click on sign up button") do
  signupSubmitButton = driver.find_element(:link_text, "Sign up")
  signupSubmitButton.click
end

Then("I am on the homepage and I log out") do
  logoutButton = driver.find_element(:link_text, "Sign Out")
  logoutButton.click
end

puts "Test Passed: Sign up for Standard User validated."

# Drop browser object
driver.quit
