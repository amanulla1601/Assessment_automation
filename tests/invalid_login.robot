*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../config/variables.robot
Resource    ${CURDIR}/../keywords/login_page.robot
Suite Setup    Open the Browser
Suite Teardown    Close the web browser

*** Test Cases ***
Validating the login with invalid credentials

    Login using the invalid credentials    
    Wait Until Page Contains    Your username is invalid!

