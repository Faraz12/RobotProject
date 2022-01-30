*** Settings ***
Library  SeleniumLibrary

Variables   LandingPage.yaml
Variables   OwnerPage.yaml

*** Keywords ***
Load
    Go To  ${START_URL}


Varify Page Loaded
    Wait Until Page Contains  Today's Deals

Click on the Veterinations
    Wait Until Page Contains  Welcome
    CLick Element   ${Veterian_Txt}

Click on the Find Owners
    Wait Until Page Contains  Welcome
    CLick Link   css:${Find_Owner_Txt}

