require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://localhost:3000"

##TESTING FOR STANDARD USER ##############################

##STANDARD USER WITH BAD EMAIL ######################
#find log in button and click to navigate to log in page.
loginButton = driver.find_element(:class, "log-in")
loginButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:class => "log-in-box") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('wrong@standard.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }


##STANDARD USER WITH NO PASSWORD ######################

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }


## STANDARD USER WITH BAD PASSWORD #########################
#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('wrongpassword')

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

## STANDARD USER SUCCESSFUL LOGIN ############################
#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('password')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }
#sign out from the standard user account.
logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

##TESTING FOR PREMIUM USER ##############################

##PREMIUM USER WITH NO PASSWORD ######################
#wait until the log in button is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class, "log-in") }
loginButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class => "log-in-box") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('premium@premium.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

## STANDARD USER WITH BAD PASSWORD #########################

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('wrongpassword')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

## PREMIUM USER SUCCESSFUL LOGIN ############################
#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('premium@premium.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('password')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }
#sign out from the premium user account.
logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click


##TESTING FOR ADMIN USER ##############################

##ADMIN USER WITH NO PASSWORD ######################
#find log in button and click to navigate to log in page.
loginButton = driver.find_element(:class, "log-in")
loginButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:class => "log-in-box") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('admin@admin.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }


## ADMIN USER WITH BAD PASSWORD #########################
#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('admin@admin.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('wrongpassword')

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

## ADMIN USER SUCCESSFUL LOGIN ############################
#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('admin@admin.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('password')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }
#sign out from the premium user account.
logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

#wait until the log in button is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class, "log-in") }

puts "Test Passed: Log in for Standard, Premium and Admin User validated."

# Drop browser object
driver.quit
