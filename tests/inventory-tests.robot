*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords.robot

*** Test Cases ***
Ver Productos en Inventario
    [Tags]    inventory
    Open Browser To Login Page
    Login With Valid Credentials
    Should See Inventory Page
    Page Should Contain Element    css:.inventory_item
    Capture Page Screenshot
