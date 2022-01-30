*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Cart.robot

Resource    ../Resources/PO/PetClinic/PetClinicLandingPage.robot
Resource    ../Resources/PO/PetClinic/OwnerPage.robot
Resource    ../Resources/PO/PetClinic/PetPage.robot
*** Keywords ***

Click On Veterinarians Hamburger Menu
    LandingPage.Load
    PetClinicLandingPage.Click on the Veterinations
    BuiltIn.Sleep   4

Add a New Owner
    Set Global Variable  ${first_name}
    Set Global Variable  ${last_name}
    Set Global Variable  ${address}
    Set Global Variable  ${country}
    Set Global Variable  ${phone_number}
    [Arguments]  ${first_name}  ${last_name}    ${address}  ${country}  ${phone_number}
    Click on the Add New Owner Button
    Add Owner   ${first_name}   ${last_name}    ${address}  ${country}  ${phone_number}


Submit New Owner
    Submit Owner Button
    BuiltIn.Sleep   5

Add a New Pet
    Set Global Variable  ${Pet_Catagory}
    Set Global Variable  ${Date_Of_Birth}
    [Arguments]  ${first_name}      ${Pet_Catagory}     ${Date_Of_Birth}
    Click on the Add New Pet Button
    Add New Pet     ${first_name}       ${Pet_Catagory}     ${Date_Of_Birth}
    BuiltIn.Sleep   5

Image Should be Present
    LandingPage.Load
    Page should contain image   css:${Welcome_Image}


