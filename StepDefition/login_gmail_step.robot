*** Settings ***
Resource        ../Resources.robot
Resource        ../PageObject/KeywordStepDefinition/login_gmail_object.robot

*** Keywords ***
User go to gmail login page
    Display gmail login page
User input valid username
    Input username on the placeholder
    Click next button for input password
User input valid password
    Input password on the placeholder
    Click button for login
User successfully login to gmail 
    Successfully login to gmail

# User go to gmail login page    
#     Display gmail login page
User input unregistered email
    Input unregistered email on the placeholder
    Click next button for input password
Failed to find account email message displayed
    Failed to find the email account message displayed

# User go to gmail login page
#     Display gmail login page
# User input valid username
#     Input username on the placeholder
#     Click next button for input password
User input invalid password
    Input invalid password on the placeholder
    Click button for login
User failed to login to gmail
    Wrong password message displayed
    