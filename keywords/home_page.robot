*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../config/variables.robot
Resource    ${CURDIR}/../resources/pages/login_page.robot
Resource    ${CURDIR}/../resources/pages/homepage.robot

*** Keywords ***
logout from the website
    Wait Until Element Is Visible    ${logout_button}
    Click Element    ${logout_button}
    Wait Until Page Contains    This is a simple Login page