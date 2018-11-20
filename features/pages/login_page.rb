class LoginPage
  attr_accessor :loginTab,:logoutTab,:txtUsername,:txtPassword,:btnLogin

  def initialize(browser)
    @browser = browser
    @loginTab = @browser.a(:text =&gt; "Log In")
    @logoutTab = @browser.a(:text =&gt; "Sign Out")
    @txtUsername = @browser.text_field(:class =&gt; "email-field")
    @txtPassword = @browser.text_field(:class =&gt; "password-field")
    @btnLogin = @browser.element(:class, "input-submit-button")
  end

  def visit
    @browser.goto "https://localhost:3000"
  end

  def clickLoginTab()
    @loginTab.click
  end

  def enterEmail(useremail)
    @txtUsername.set username
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def clickLoginButton
    @btnLogin.click
  end

  def verifyHomePageHeader()
    @browser.element(:text; "Log Out").wait_until_present
  end

  def verifyErrorMessage()
    @browser.element(:tag_name, "alert").wait_until_present
  end

  def verifyLogInPage()
    @browser.element(:text; "Sign In").wait_until_present
  end
end
