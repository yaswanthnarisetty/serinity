# Feature: Admin functionality
#     As a ROC Admin in Test
#     I want to test the account-dev.resmed.com Admin work flow
    
#     Scenario: Admin work flow
#      Given I open the url "https://account-dev.resmed.com/"
#         And I clear the inputfield "[name='email']"
#         When I add "admintest99@mailinator.com" to the inputfield "[name='email']"
#         And I clear the inputfield "[name='password']"
#         And I add "Welcome@01" to the inputfield "[name='password']"
#         And I click on the button "button=Sign In"
#         Then I expect that element "button=Sign In" is enabled
#         Then I wait on element "span=ROC 2.0 - Settings" for 10000ms to be displayed
#         Then I expect that the url is "https://account-dev.resmed.com/en-us/dashboard"
#         Then I expect that element "span=ROC 2.0 - Settings" does exist
#         Then I wait on element "a=Admin" for 10000ms to be displayed
#         And I click on the button "button=Admin"
#         Then I expect that element "[name='search']" is enabled
#         And I click on the element "[name='search']"
#         And I add "dev-test@tafmail.com" to the inputfield "[name='search']"
#         And I click on the button "button=Edit:nth-child(1)"



