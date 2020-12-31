*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    #Pour exécution en local :
    #Open Browser  about:blank  ${BROWSER}
    # Pour exécution sur Sauce Labs : ajout de 2 paramètres : remote_url & desired_capabilities
    Open Browser  about:blank  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}

End Web Test
    Close Browser