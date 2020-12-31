*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${PRODUCTLIST_FIRST_PRODUCT} =  TOTO
${PRODUCTLIST_DEPARTMENT} =  css=#n-title > span

*** Keywords ***
Wait Search Results
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Search Results Assertions
    Element Should Be Visible  ${PRODUCTLIST_DEPARTMENT}
    Element Text Should Be  ${PRODUCTLIST_DEPARTMENT}  Department

Select First Product
    # css trop long pour pouvoir être mis dans la variable en commentaire ci-dessus ?
    Click Link  css=#search > div.s-desktop-width-max.s-desktop-content.sg-row > div.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(1) > div > span > div > div > div:nth-child(3) > h2 > a
