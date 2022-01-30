*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  http://www.amazon.com


Varify Page Loaded
    Wait Until Page Contains  Today's Deals