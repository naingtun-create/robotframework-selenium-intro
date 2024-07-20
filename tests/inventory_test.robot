*** Settings ***
Resource    ../resources/common.robot
Resource    ../resources/locators.robot
Resource    ../resources/test_data.robot

Test Setup    Login And Navigate To Inventory
Test Teardown    Close Browser

*** Test Cases ***
Check Inventory Item Count
    ${item_count}=    Get Element Count    ${INVENTORY_ITEM}
    Should Be Equal As Integers    ${item_count}    6

Sort Products By Price High To Low
    Select From List By Value    ${PRODUCT_SORT_CONTAINER}    hilo
    ${first_price}=    Get Text    ${FIRST_ITEM_PRICE}
    ${last_price}=    Get Text    ${LAST_ITEM_PRICE}
    Should Be True    ${first_price} > ${last_price}

Add Item To Cart
    Click Element    ${ADD_TO_CART_BACKPACK}
    ${cart_badge}=    Get Text    ${SHOPPING_CART_BADGE}
    Should Be Equal As Integers    ${cart_badge}    1