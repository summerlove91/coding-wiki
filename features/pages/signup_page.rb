class LoginPage
  attr_accessor :signupTab,:txtUsername,:txtPassword,:btnSignup

  def initialize(browser)
    @browser = browser
    @signupTab    = @browser.a(:text =&gt; "Sign Up")
    @txtUsername = @browser.text_field(:class =&gt; "email-field")
    @txtPassword = @browser.text_field(:class =&gt; "password-field")
    @txtPasswordConfirmation = @browser.text_field(:class =&gt; "password-confirmation")
    @btnSignup     = @browser.element(:class =&gt; "input-submit-button")
  end

  def visit
    @browser.goto "https://localhost:3000"
  end

  def clickSignupTab()
    @signupTab.click
  end

  def enterEmail(useremail)
    @txtUsername.set username
  end

  def enterUsername(username)
    @txtUsername.set username
  end

  def enterPassword(password)
    @txtPassword.set password
  end

  def enterPasswordConfirmation(password)
    @txtPasswordConfirmation.set password
  end

  def clickSignupButton
    @btnSignup.click
  end

  def verifyErrorMessage()
    @browser.element(:tag_name, "alert").wait_until_present
  end

  def verifyHomePageHeader()
    @browser.element(:text =&gt; "Sign Out").wait_until_present
  end
end
