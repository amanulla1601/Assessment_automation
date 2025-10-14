*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../config/variables.robot
Resource    ${CURDIR}/../keywords/login_page.robot
Resource    ${CURDIR}/../keywords/home_page.robot
Resource    ${CURDIR}/../resources/pages/homepage.robot
Suite Setup    Open the Browser
Suite Teardown    Close the web browser
    

*** Test Cases ***
Validating the home page

    Login using the valid credentials    
    Wait Until Page Contains    Logged In Successfully

    @{all_locators}=    Create List    ${home_locator}    ${practice_locator}    ${courses_locator}    ${blog_locator}    ${contact_locator}
    FOR    ${locator}    IN    @{all_locators}
        Element Should Be Visible    ${locator}
    END

    logout from the website


