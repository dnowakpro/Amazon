*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PRODUCTPAGE_ADDTOCART_BUTTON} =  id=add-to-cart-button

*** Keywords ***
Wait Product Page
    Wait Until Page Contains  Back to results

Add To Cart
    Click Button  ${PRODUCTPAGE_ADDTOCART_BUTTON}
