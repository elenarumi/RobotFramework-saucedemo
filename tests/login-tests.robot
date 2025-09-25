*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot

*** Test Cases ***
Login Con Credenciales Válidas
    [Tags]    login    smoke
    Open Browser To Login Page
    Login With Valid Credentials
    Should See Inventory Page
    Capture Page Screenshot

Login Con Credenciales Inválidas
    [Tags]    login    negative
    Open Browser To Login Page
    Login With Invalid Credentials
    Should See Login Error
    Capture Page Screenshot
