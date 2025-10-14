*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${logout_button}    xpath://a[text()='Log out']
@{menu_locators}    
${home_locator}    xpath://a[text()='Home']
${practice_locator}    xpath://a[text()='Practice']
${courses_locator}    xpath://a[text()='Courses']
${blog_locator}    xpath://a[text()='Blog']
${contact_locator}    xpath://a[text()='Contact']