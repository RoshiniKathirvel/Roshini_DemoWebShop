*** Settings ***
Documentation    To validate the login
Library    SeleniumLibrary
Resource    ../Resources/GenericPage.robot
Resource    ../Resources/LoginResources.robot
Task Setup    open the browser
Test Teardown    close browser session
Library    DataDriver    file=../TestData/LoginData.csv      encoding=utf_8    dialect=unix
Test Template    Validate the unsuccessful login


*** Test Cases ***

Fill the login form     ${username}      ${password} 

*** Keywords ***
Validate the unsuccessful login
    [Arguments]     ${username}    ${password}
    clicks the login
    Fill the login form     ${username}    ${password}
    Verify the alert message

Clicks the login
    LoginResources.Click the login

Fill the login forms 
    [Arguments]    ${username}    ${password}
    LoginResources.Fill the Login form    ${username}    ${password}

Verify the alert message
    LoginResources.verify the unsuccess message