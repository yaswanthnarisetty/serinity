# Feature: Profile Changes
#     As a ROC User in Test
#     I want to test if the account-dev.resmed.com failed login screen displays an error
  
# Scenario: login with wrong password
#     Given I open the url "https://account-dev.resmed.com/"
#     And I clear the inputfield "[name='email']"
#     When I add "dev-test@tafmail.com" to the inputfield "[name='email']"
#     And I clear the inputfield "[name='password']"
#     And I add "Welcome@03" to the inputfield "[name='password']"
#     And I click on the button "button=Sign In"
#     Then I expect that element "button=Sign In"
#     Then I expect that element "span=The email and password you entered did not match our records. Please double check and try again." 

# Scenario: Signup with already registered credentials
#     Given I open the url "https://account-dev.resmed.com/en-us/signup"
#     And I clear the inputfield "[name='firstName']"
#     When I add "dev" to the inputfield "[name='firstName']"
#     And I clear the inputfield "[name='lastName]"
#     When I add "test" to the inputfield "[name='lastName']"
#     And I clear the inputfield "[name='email']"enabled
#     When I add "devtest@blondmail.com" to the inputfield "[name='email']"
#     And I clear the inputfield "[name='password']"
#     When I add "Welcome@01" to the inputfield "[name='password']"
#     And I clear the inputfield "[name='confirm_password']"
#     When I add "Welcome@01" to the inputfield "[name='confirm_password']"
#     And I clear the inputfield "[name='org']"
#     When I add "ResMed" to the inputfield "[name='org']"
#     And I click on the inputfield "[name='country']"enabled
