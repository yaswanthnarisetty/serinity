Feature: ROC test
    As a ROC User in Test
    I want to test if the account-dev.resmed.com failed login screen displays an error
 @test-only
  Scenario: login with fake credentials
    Given I open the url "https://account-dev.resmed.com/"
    And I clear the inputfield "[name='email']"
    When I add "test@roc.com" to the inputfield "[name='email']"
    And I clear the inputfield "[name='password']"
    And I add "11111111" to the inputfield "[name='password']"
    And I click on the button "button=Sign In"
    Then I expect that element "button=Sign In" is enabled
    Then I expect that element "span=The email and password you entered did not match our records. Please double check and try again." contains the text "The email and password you entered did not match"
 
  Scenario: login with unverified credentials
    Given I open the url "https://account-dev.resmed.com/"
    And I clear the inputfield "[name='email']"
    When I add "automation-testing-dev@blondmail.com" to the inputfield "[name='email']"
    And I clear the inputfield "[name='password']"
    And I add "Welcome@01" to the inputfield "[name='password']"
    And I click on the button "button=Sign In"
    Then I expect that element "button=Sign In" is enabled
    Then I expect that element "span=The email address was already registered but not verified, please click on the information icon for more details" contains the text "The email address was already registered but not verified,"
 
  Scenario: login with correct credentials
    Given I open the url "https://account-dev.resmed.com/"
    And I clear the inputfield "[name='email']"
    When I add "dev-test@tafmail.com" to the inputfield "[name='email']"
    And I clear the inputfield "[name='password']"
    And I add "Welcome@01" to the inputfield "[name='password']"
    And I click on the button "button=Sign In"
    Then I expect that element "button=Sign In" is enabled
    Then I wait on element "span=ROC 2.0 - Settings" for 10000ms to be displayed
    Then I expect that the url is "https://account-dev.resmed.com/en-us/dashboard"
    Then I expect that element "span=ROC 2.0 - Settings" does exist
    And I click on the button "$('button[data-testid="radix-:r0:"]')"
    And I click on the element "a=Sign Out"
    Then I wait on element "span=ResMed Employee?" for 10000ms to be displayed

  




 