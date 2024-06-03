*** Settings ***
Documentation    This is a reuse of keywords and variables for login 
Library    SeleniumLibrary

*** Variables ***
${login_click}    xpath=//a[text()='Log in']
${user}    id:loginusername
${pass}    id:loginpassword
${login_submit}    xpath=//button[text()='Log in']
${log_suc}    id:nameofuser


*** Keywords ***

Click the login
    Click Element    ${login_click} 

Fill the Login form
    [Arguments]    ${username}    ${password}
    Input Text      id:loginusername      ${username}
    Input Text   id:loginpassword    ${password}
    Click Button    ${login_submit}

Verify for the Success Message
    Element Text Should Be    ${log_suc}    WelcomeRoshiniJK

verify the unsuccess message
    Alert Should Be Present    Wrong password.

Verify for the blank space
    Alert Should Be Present    Please fill out Username and Password.

verify the invalid user
    Alert Should Be Present    User does not exist.

#There is an resources file for information
#This is group projrct
