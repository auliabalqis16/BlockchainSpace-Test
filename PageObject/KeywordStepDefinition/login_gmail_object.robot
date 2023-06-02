*** Settings ***
Resource            ../../Resources.robot
Resource            ../Locators/page_login.robot

*** Keywords ***
Display gmail login page
    Wait Until Element Is Visible      ${login_wording} 
Input username on the placeholder
    Wait Until Element Is Visible      ${username_field}       2s
    Input Text                         ${username_field}       ${email_uname}               
Click next button for input password
    Wait Until Element Is Visible      ${next_btn}
    Click Element                      ${next_btn}
Input password on the placeholder
    Wait Until Element Is Visible      ${password_field}       2s
    Input Text                         ${password_field}       ${password}            
Click button for login
    Wait Until Element Is Visible      ${next_btn2}
    Click Element                      ${next_btn2}
Successfully login to gmail
    Wait Until Element Is Visible      ${welcome_woridng}
    Page Should Contain Element        ${welcome_woridng}

Input unregistered email on the placeholder
    Wait Until Element Is Visible      ${username_field}       2s
    Input Text                         ${username_field}       ${invalid_uname}   
Failed to find the email account message displayed
    Wait Until Element Is Visible      ${unfound_acc}
    Page Should Contain Element        ${unfound_acc}

Input invalid password on the placeholder
    Wait Until Element Is Visible      ${password_field}       2s
    Input Text                         ${password_field}       ${invalid_pw}   
Wrong password message displayed 
    Wait Until Element Is Visible      ${wrong_pw}
    Page Should Contain Element        ${wrong_pw}