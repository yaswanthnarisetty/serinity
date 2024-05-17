# Feature: Role Request
#     As a ROC User in Test
#     I want to test the account-dev.resmed.com role request work flow
#    // @test-only
#     Scenario: Requesting for a role
#         Given I open the url "https://account-dev.resmed.com/"
#         And I clear the inputfield "[name='email']"
#         When I add "dev-test@tafmail.com" to the inputfield "[name='email']"
#         And I clear the inputfield "[name='password']"
#         And I add "Welcome@01" to the inputfield "[name='password']"
#         And I click on the button "button=Sign In"
#         Then I expect that element "button=Sign In" is enabled
#         Then I wait on element "span=ROC 2.0 - Settings" for 10000ms to be displayed
#         Then I expect that the url is "https://account-dev.resmed.com/en-us/dashboard"
#         Then I expect that element "span=ROC 2.0 - Settings" does exist
#         Then I wait on element "a=My Apps" for 10000ms to be displayed
#         Then I expect that element "a=My Apps" does exist
#         Then I wait on element "[id=test__id]" for 10000ms to be displayed
#         And I click on the element "[id=test__id]"
#         Then I wait on element "span=PRODUCT SUPPORT DESCRIPTION" for 10000ms to be displayed
#         Then I expect that element "span=PRODUCT SUPPORT DESCRIPTION" does exist
#         And I click on the element "[id='6486d743c735a9f00f8c7788']"
#         Then I expect that element "span=Technical Ventilator" does exist
#         And I click on the button "button=Request Access"
#         Then I wait on element "[id=test__id]" for 10000ms to be displayed
#         And I click on the element "[id=test__id]"


        
