*** Settings ***
Documentation  Amazon Top Navigation
Library  SeleniumLibrary

*** Keywords ***

Search For Product
    Enter Search Term
    Submit Search
Enter Search Term
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    Click Button  css=.nav-search-submit.nav-sprite .nav-input








