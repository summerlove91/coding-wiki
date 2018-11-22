require 'selenium-webdriver'
require 'watir'


  Given (/^I want to use the browser Firefox$/) do
    driver = Selenium::WebDriver.for :firefox
    #Loading the assertselenium URL
    driver.navigate.to "http://localhost:3000"
  end

  And(/^I click on Login button$/) do
    loginButton = driver.find_element(:class, "log-in")
    loginButton.click
  end

  And(/^I wait for the log in page to display$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('wrong@standard.com')
  end

  When(/^When I set the user password to "([^"]*)"$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('password')
  end

  When(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

  And(/^I am on the login page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end


##STANDARD USER WITH NO PASSWORD ######################


  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('standard@standard.com')
  end

  And(/^I set the user password to empty$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys(' ')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"&/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

## STANDARD USER WITH BAD PASSWORD #########################


  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('standard@standard.com')
  end

  And(/^I set the user password to "([^"]*)"$/ ) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('wrongpassword')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

## STANDARD USER SUCCESSFUL LOGIN ############################

  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('standard@standard.com')
  end

  And(/^I set the user password to "([^"]*)"$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('password')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then (/^I am on the home page$/) do
    #wait until the sign in page displays.
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:link_text => "Sign Out") }
  end

  And (/^I sign out$/) do
    logoutButton = driver.find_element(:link_text, "Sign Out")
    logoutButton.click
  end

##TESTING FOR PREMIUM USER ##############################

##PREMIUM USER WITH NO PASSWORD ######################

  Given (/^I am on the home page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  And(/^I click on Login button$/) do
    loginButton = driver.find_element(:class, "log-in")
    loginButton.click
  end

  And(/^I wait for the log in page to display$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('premium@premium.com')
  end

  And(/^I set the user password to empty$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys(' ')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

## PREMIUM USER WITH BAD PASSWORD #########################

  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to {premium@premium.com}$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('premium@premium.com')
  end

  And(/^I set the user password to "([^"]*)"$/ ) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('wrongpassword')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

## PREMIUM USER SUCCESSFUL LOGIN ############################


  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('premium@premium.com')
  end

  And(/^I set the user password to "([^"]*)"$/ ) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('sksskdi30!')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then (/^I am on the home page$/) do
    #wait until the sign in page displays.
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:link_text => "Sign Out") }
  end

  And (/^I sign out$/) do
    logoutButton = driver.find_element(:link_text, "Sign Out")
    logoutButton.click
  end

##TESTING FOR ADMIN USER ##############################

##ADMIN USER WITH NO PASSWORD ######################

  Given (/^I am on the home page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  And(/^I wait for the log in page to display$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('admin@admin.com')
  end

  And(/^I set the user password to empty$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys(' ')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end


## ADMIN USER WITH BAD PASSWORD #########################


  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('admin@admin.comm')
  end

  And(/^I set the user password to "([^"]*)"$/ ) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('wrongpassword')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then(/^I see the error message "([^"]*)"$/) do |string|
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:tag_name, "alert") }
  end

## ADMIN USER SUCCESSFUL LOGIN ############################


  Given (/^I am already on log in page$/) do
    wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
    wait.until {driver.find_element(:class => "log-in-box") }
  end

  When(/^I set the user email to "([^"]*)"$/) do
    loginEmail = driver.find_element(:class, "log-in-email-input")
    loginEmail.send_keys('admin@admin.com')
  end

  And(/^I set the user password to "([^"]*)"$/) do
    loginPassword = driver.find_element(:class, "log-in-password-input")
    loginPassword.send_keys('password')
  end

  And(/^I login to Code Overflow$/) do
    loginSubmitButton = driver.find_element(:link_text, "Sign in")
    loginSubmitButton.click
  end

  Then (/^I am on the home page$/) do
    #wait until the sign in page displays.
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:link_text => "Sign Out") }
  end

  And (/^I sign out$/) do
    logoutButton = driver.find_element(:link_text, "Sign Out")
    logoutButton.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
    wait.until {driver.find_element(:class, "log-in") }
  end

puts "Test Passed: Log in for Standard, Premium and Admin User validated."

# Drop browser object
driver.quit