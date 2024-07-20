*** Settings ***
Library    SeleniumLibrary
Resource    locators.robot
Resource    test_data.robot

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.saucedemo.com/

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds

Login And Navigate To Inventory
    Open Browser To Login Page
    Input Username    ${VALID_USER}
    Input Password    ${VALID_PASSWORD}
    Submit Credentials

Login And Add Item To Cart
    Login And Navigate To Inventory
    Click Element    ${ADD_TO_CART_BACKPACK}

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Credentials
    Click Button    ${LOGIN_BUTTON}