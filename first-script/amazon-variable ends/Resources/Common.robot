*** Settings ***
Library  SeleniumLibrary

Resource    ../Resources/PO/PetClinic/PetClinicLandingPage.robot
*** Keywords ***

#All these codes are common so putting them in a commen file
Begin Web Test Cases
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser


Click on the Find Owner Tab
    LandingPage.Load
    Click on the Find Owners
    BuiltIn.Sleep   3
