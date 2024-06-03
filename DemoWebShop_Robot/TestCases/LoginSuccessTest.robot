*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/GenericPage.robot
Resource    ../Resources/LoginResources.robot
Test Setup    open the browser
Task Teardown    close browser session
Library    DataDriver    file=../TestDatas/LoginData.csv      encoding=utf_8    dialect=unix
Test Template    validate the successful login

*** Test Cases ***

validates the successful msg    ${username}    ${password}
    

*** Keywords ***
validate the successful login
    [Arguments]             ${username}    ${password}
    fill the logins form     ${username}    ${password}
    verify the Login msg

Fill the logins form
    [Arguments]    ${username}    ${password}
    LoginResources.Fill the Login form    ${username}    ${password}

verify the Login msg
    LoginResources.Verify for the Success Message




