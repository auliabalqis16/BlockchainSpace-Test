*** Settings ***
Library                                     SeleniumLibrary
Library                                     Collections
Library                                     BuiltIn
Library                                     String
Library	                                    Screenshot
Resource                                    TestData/secret.robot

*** Variables ***
${Browser}      Chrome

*** Keywords ***
Open Web Browser Gmail
    Open Browser                ${gmail_web}         ${Browser}
    Set Selenium Speed          1s
    Maximize Browser Window

