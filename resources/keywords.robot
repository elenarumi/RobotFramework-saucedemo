*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}      https://www.saucedemo.com/
${USERNAME}       standard_user
${PASSWORD}       secret_sauce
${INVALID_USER}   invalid_user
${INVALID_PASS}   wrong_pass

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window
    Set Selenium Speed    0.3s

Login With Valid Credentials
    Input Text    id:user-name     ${USERNAME}
    Input Text    id:password      ${PASSWORD}
    Click Button  id:login-button

Login With Invalid Credentials
    Input Text    id:user-name     ${INVALID_USER}
    Input Text    id:password      ${INVALID_PASS}
    Click Button  id:login-button

Should See Inventory Page
    Wait Until Element Is Visible    css:.inventory_list

Should See Login Error
    Wait Until Element Is Visible    css:.error-message-container
