*** Settings ***
Resource      ../Resources.robot
Resource      ../StepDefition/login_gmail_step.robot

Test Setup          Open Web Browser Gmail
Test Teardown       Close Browser

*** Test Cases ***
Login gmail with valid credential
    [Tags]        Positive
    Given User go to gmail login page
    When User input valid username
    And User input valid password
    Then User successfully login to gmail

Login gmail with unregistered account
    [Tags]        Negative
    Given User go to gmail login page
    When User input unregistered email
    Then Failed to find account email message displayed

Login with valid email and invalid password
    [Tags]        Negative
    Given User go to gmail login page
    When User input valid username
    And User input invalid password
    Then User failed to login to gmail