*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =  id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =  css=#nav-search-submit-text > input

*** Keywords ***
Type Search
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Click Search Button
    Click Button  ${TOPNAV_SEARCH_BUTTON}
