*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables *** 
${url}      https://www.demoblaze.com/
${browser_name}      Chrome


*** Keywords ***

open the browser
      Create Webdriver        ${browser_name}
      Go To     ${url}
      Maximize Browser Window
      Set Selenium Implicit Wait     5


close browser session
        Close Browser
#This is a new product adding resources