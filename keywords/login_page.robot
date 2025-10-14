*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../config/variables.robot
Resource    ${CURDIR}/../resources/pages/login_page.robot

*** Keywords ***
Open the Browser
    Open Browser    ${BASE_URL}     ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${loginpage_assertion}

Login using the valid credentials
    # Scroll Element Into View    ${user_name}
    Input Text    ${field_username}    ${USERNAME}
    Input Password    ${field_password}     ${PASSWORD}
    Click Element    ${submit_button}  

Login using the invalid credentials

    Input Text    ${field_username}    ${USERNAME_INVALID}
    Input Password    ${field_password}     ${PASSWORD_}
    Click Element    ${submit_button}  
    
Close the web browser
    Close Browser