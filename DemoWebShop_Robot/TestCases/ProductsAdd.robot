*** Settings ***
Documentation    To validate the login
Library    SeleniumLibrary
Resource    ../Resources/GenericPage.robot
Resource    ../Resources/ProductResources.robot
Library    DataDriver    file=../TestDatas/LoginData.csv      encoding=utf_8    dialect=unix
Task Setup    open the browser
Test Teardown    close browser session
Test Template    Add the products to the cart

*** Test Cases ***
validate the products

*** Keywords ***
Add the products to the cart
   Click the products
    click the monitor

Click the products
        ProductResources.verify the add to cart
        ProductResources.verify the alert message
    
click the monitor
        ProductResources.verify the monitor to add to cart
         ProductResources.verify the alert message

    


