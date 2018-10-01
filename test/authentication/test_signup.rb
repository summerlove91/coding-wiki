require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://localhost:3000"

#find sign in button and click to navigate to sign in page.
signinButton = driver.find_element(:class, "sign-in-button")
signinButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:class => "sign-up-box") }

#define user name field element.
signupName = driver.find_element(:class, "sign-up-name-input")
signupName.send_keys('')

#define user email field element.
signupEmail = driver.find_element(:class, "sign-up-email-input")
signupEmail.send_keys('test@test.com')

#define user password field element.
signupPassword = driver.find_element(:class, "sign-up-password-input")
signupPassword.send_keys('password')

#define user password confirmation field element.
signupPasswordConfirmation = driver.find_element(:class, "sign-up-password-confirmation-input")
signupPasswordConfirmation.send_keys('password')

#click Sign up submit button
signupSubmitButton = driver.find_element(:link_text, "Sign up")
signupSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }



#define user name field element.
signupName = driver.find_element(:class, "sign-up-name-input")
signupName.send_keys('Test User')

#define user email field element.
signupEmail = driver.find_element(:class, "sign-up-email-input")
signupEmail.send_keys('dd')

#define user password field element.
signupPassword = driver.find_element(:class, "sign-up-password-input")
signupPassword.send_keys('password')

#define user password confirmation field element.
signupPasswordConfirmation = driver.find_element(:class, "sign-up-password-confirmation-input")
signupPasswordConfirmation.send_keys('password')

#click Sign up submit button
signupSubmitButton = driver.find_element(:link_text, "Sign up")
signupSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }



#define user name field element.
signupName = driver.find_element(:class, "sign-up-name-input")
signupName.send_keys('Test User')

#define user email field element.
signupEmail = driver.find_element(:class, "sign-up-email-input")
signupEmail.send_keys('test@test.com')

#define user password field element.
signupPassword = driver.find_element(:class, "sign-up-password-input")
signupPassword.send_keys('wrong')

#define user password confirmation field element.
signupPasswordConfirmation = driver.find_element(:class, "sign-up-password-confirmation-input")
signupPasswordConfirmation.send_keys('password')

#click Sign up submit button
signupSubmitButton = driver.find_element(:link_text, "Sign up")
signupSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }



#define user name field element.
signupName = driver.find_element(:class, "sign-up-name-input")
signupName.send_keys('Test User')

#define user email field element.
signupEmail = driver.find_element(:class, "sign-up-email-input")
signupEmail.send_keys('test@test.com')

#define user password field element.
signupPassword = driver.find_element(:class, "sign-up-password-input")
signupPassword.send_keys('password')

#define user password confirmation field element.
signupPasswordConfirmation = driver.find_element(:class, "sign-up-password-confirmation-input")
signupPasswordConfirmation.send_keys('password')

#click Sign up submit button
signupSubmitButton = driver.find_element(:link_text, "Sign up")
signupSubmitButton.click

#wait until the main welcome page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }

logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

puts "Test Passed: Sign up for Standard User validated."

# Drop browser object
driver.quit
