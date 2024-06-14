*** Settings ***
Documentation    To validate the login
Library    SeleniumLibrary
Resource    ../Resources/GenericPage.robot
Resource    ../Resources/LoginResources.robot
Resource    ../Resources/ProductResources.robot
Library    DataDriver    file=../TestDatas/LoginData.csv      encoding=utf_8    dialect=unix
Task Setup    open the browser
Test Teardown    close browser session
Test Template    Add the product to the cart
   
*** Test Cases ***
Verify the values     ${username}
    

*** Keywords ***
Add the product to the cart
    ProductResources.verify the add to cart
    ProductResources.verify the alert message
  #new products
