require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://localhost:3000"

#find log in button and click to navigate to log in page.
loginButton = driver.find_element(:class, "log-in")
loginButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:class => "log-in-box") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('testuser2')

#wait until the error message is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:tag_name, "alert") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('zdy@yzmlvo.hvz')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('password')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }

logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

#wait until the log in button is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class, "log-in") }

loginButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class => "log-in-box") }

#define user email field element.
loginEmail = driver.find_element(:class, "log-in-email-input")
loginEmail.send_keys('standard@standard.com')

#define user password element.
loginPassword = driver.find_element(:class, "log-in-password-input")
loginPassword.send_keys('sksskdi30!')

#click submit button
loginSubmitButton = driver.find_element(:link_text, "Sign in")
loginSubmitButton.click

#wait until the sign in page displays.
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
wait.until {driver.find_element(:link_text => "Sign Out") }

logoutButton = driver.find_element(:link_text, "Sign Out")
logoutButton.click

#wait until the log in button is displayed.
wait = Selenium::WebDriver::Wait.new(:timeout => 2) # seconds
wait.until {driver.find_element(:class, "log-in") }

puts "Test Passed: Log in for Admin and Standard User validated."

# Drop browser object
driver.quit
