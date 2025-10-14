*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../config/variables.robot
Resource    ${CURDIR}/../keywords/login_page.robot 
Suite Setup    Open the Browser
Suite Teardown    Close the web browser

*** Test Cases ***
Validating the successful login

    Login using the valid credentials
    Page Should Contain    Logged In Successfully

