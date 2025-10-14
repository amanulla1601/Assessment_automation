*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${field_username}    name:username
${field_password}    //input[@name='password']
${submit_button}    //button[@id='submit']
${loginpage_assertion}    xpath://h2[text()='Test login']