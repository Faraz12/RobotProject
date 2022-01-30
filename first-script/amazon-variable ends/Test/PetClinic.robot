*** Settings ***

# FakerLibrary is Used for Fake Data
Library             FakerLibrary       locale=en_us
Library    DateTime

Documentation  This is some basic info about Suit

Test Setup  Common.Begin Web Test Cases
Test Teardown  Common.End Web Test
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/PetClinic.robot
*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://localhost:8080/
${SEARCH_TERM} =  samsung s10
${first_name}
${last_name}
${address} =  22 Est Coast England
${country}
${phone_number} =   906060050
${Pet_Catagory} =  lizard
${Date_Of_Birth}

*** Test Cases ***
Find All the Veterinarians Which are added in the Application
    [Documentation]  Find All The Veterinarians In The Application
    [Tags]  smoke
    PetClinic.Click On Veterinarians Hamburger Menu

Add a new owner, add pet for that owner.
    [Documentation]  Add a New Ower and a Pet for that Owner
    [Tags]  current
    ${Date_Of_Birth}=      Get Current Date    result_format=%d-%m-%Y    increment= -300 day
    ${first_name} =  FakerLibrary.first_name
    ${last_name} =  FakerLibrary.last_name
    ${country} =  FakerLibrary.country
    Click on the Find Owner Tab
    Add a New Owner     ${first_name}   ${last_name}    ${address}  ${country}      ${phone_number}
    Submit New Owner
    Verify Added Owner Information Is Correct   ${first_name}   ${last_name}    ${address}  ${country}      ${phone_number}
    Add a New Pet   ${first_name}   ${Pet_Catagory}     ${Date_Of_Birth}
    Verify Added Pet Information Is Correct     ${first_name}   ${Pet_Catagory}   ${Date_Of_Birth}
    #Log     ${UserName}

Find All the Existing Owner Which are Added in Application
    [Documentation]  Find All The Existing Owner
    [Tags]  owner
    Find All Owner

Verify Image On Landing Page
    [Documentation]  Find All The Existing Owner
    [Tags]  Image
    Image Should be Present