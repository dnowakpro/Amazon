*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
# Possibilité d'utiliser Suite Setup et Suite Teardown pour faire des choses avant et après toute la suite de test.

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458
# Les 2 variables qui suivent servent pour les exécutions via Sauce Labs, et ne sont pas utilisées lors des exécutions en local.
${REMOTE_URL} =  https://dnowak:feb4596c-3ca9-4cac-a731-e7983b6a809c@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${DESIRED_CAPABILITIES} =  name:win10 + ff 84,platform:Windows 10,browserName:firefox,version:84.0

*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart

