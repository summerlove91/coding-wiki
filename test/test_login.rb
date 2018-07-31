require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefoxz

#Loading the assertselenium URL
driver.navigate.to "http://localhost:3000"
