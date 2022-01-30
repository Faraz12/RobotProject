*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
     Wait Until Page Contains  Added to Cart

Proceed To Checkout
   Click Link  xpath=//*[@id="hlb-ptc-btn-native-bottom"]