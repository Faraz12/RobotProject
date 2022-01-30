*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
     Wait Until Page Contains  Added to Cart

Proceed To Checkout
   sleep  2
   Click Link  xpath=//*[@id="hlb-ptc-btn-native-bottom"]