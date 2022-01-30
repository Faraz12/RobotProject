*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to results

Add To Cart
    Sleep  3
    Click Button  css=[id*=add-to-cart-button]






