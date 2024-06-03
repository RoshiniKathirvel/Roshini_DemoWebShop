*** Settings ***
Documentation    This using of the product keywords
Library    SeleniumLibrary

*** Variables ***
${click_sam}    xpath=//a[text()='Samsung galaxy s6']
${add_cart}    xpath=//a[text()='Add to cart']
${monitors}    xpath=(//a[@class='list-group-item'])[4]
${app_click}    //a[@class='hrefch']


*** Keywords ***
verify the add to cart
    Click Element    ${click_sam}
    Click Element    ${add_cart}

verify the alert message
    Alert Should Be Present    Product added

verify the monitor to add to cart
    Click Element    ${monitors}
    Click Element    ${app_click}
    
