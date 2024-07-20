*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/locators.robot
Resource    ../resources/test_data.robot

Test Setup    Open Browser To Login Page
Test Teardown    Close Browser

*** Test Cases ***
Valid Login
    Input Username    ${VALID_USER}
    Input Password    ${VALID_PASSWORD}
    Submit Credentials
    Page Should Contain Element    ${INVENTORY_LIST}

Invalid Login
    Input Username    ${INVALID_USER}
    Input Password    ${INVALID_PASSWORD}
    Submit Credentials
    Page Should Contain    ${LOGIN_ERROR_MESSAGE}

Locked Out User
    Input Username    ${LOCKED_OUT_USER}
    Input Password    ${VALID_PASSWORD}
    Submit Credentials
    Page Should Contain    ${LOCKED_OUT_ERROR_MESSAGE}