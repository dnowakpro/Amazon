*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CARTPAGE_SUCCESS_ADDEDTOCART_MESSAGE} =  css=#huc-v2-order-row-confirm-text > h1

*** Keywords ***
Wait Product Is Added To Cart
    Wait Until Page Contains  Added to Cart

Verify Product Is Added
    Element Text Should Be  ${CARTPAGE_SUCCESS_ADDEDTOCART_MESSAGE}  Added to Cart
