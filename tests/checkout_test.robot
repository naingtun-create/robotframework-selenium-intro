*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/locators.robot
Resource    ../resources/test_data.robot

Test Setup    Login And Add Item To Cart
Test Teardown    Close Browser

*** Test Cases ***
Complete Checkout Process
    Click Element    ${SHOPPING_CART_LINK}
    Click Element    ${CHECKOUT_BUTTON}
    Input Text    ${FIRST_NAME_FIELD}    John
    Input Text    ${LAST_NAME_FIELD}    Doe
    Input Text    ${POSTAL_CODE_FIELD}    12345
    Click Element    ${CONTINUE_BUTTON}
    Click Element    ${FINISH_BUTTON}
    Page Should Contain    ${ORDER_COMPLETE_MESSAGE}

Checkout With Empty Fields
    Click Element    ${SHOPPING_CART_LINK}
    Click Element    ${CHECKOUT_BUTTON}
    Click Element    ${CONTINUE_BUTTON}
    Page Should Contain    ${ERROR_MESSAGE}