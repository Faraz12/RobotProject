*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}


Varify Page Loaded
    Wait Until Page Contains  Today's Deals



#Click on the Veterinations
#    Wait Until Page Contains  Welcome
#    CLick Element    //a[@title='veterinarians']