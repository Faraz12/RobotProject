*** Settings ***
Library  SeleniumLibrary

Variables   PetPage.yaml

*** Variables ***
${Date_Of_Birth}

*** Keywords ***

Click on the Add New Pet Button
        Click Link  css:${Add_New_Pet_Btn}

Add New Pet
    [Arguments]  ${first_name}      ${Pet_Catagory}     ${Date_Of_Birth}
    Set Global Variable  ${Date_Of_Birth}
    Wait Until Element Is Visible	css:${New_Pet_Txt}
    Input Text  css:${Pet_Name}     ${first_name}
    Click Element   css:${Birth_Date}
    #${Date_Of_Birth}=      Get Current Date    result_format=%d-%m-%Y    increment= -300 day
    Input Text  css:${Birth_Date}   ${Date_Of_Birth}
    #Select  Element
    Click Element   xpath:${Pet_Type}
    Log     ${Pet_Type}
    BuiltIn.Sleep   1
    select from list by value   xpath:${Pet_Type}   ${Pet_Catagory}
    BuiltIn.Sleep   1
    Click On Pet Submit Button

Verify Added Pet Information Is Correct
    [Arguments]  ${first_name}  ${Pet_Catagory}  ${Date_Of_Birth}
    Wait Until Page Contains    Pets and Visits
    ${Pet_Name}  Get Text    xpath:${Name_Pet_Txt}
    ${Pet_Type}  Get Text    xpath:${Pet_Type_Txt}
    ${Pet_Birth_Date}  Get Text    xpath:${Pet_Birth_Txt}
    ${Conver_Date} =    Convert Date    ${Pet_Birth_Date}    result_format=%d-%m-%Y
    #${Pet_Birth_Date}  Get Text    xpath:${Pet_Birth_Txt}
    Log  ${Conver_Date}
    Should be equal as strings   '${first_name}'      '${Pet_Name}'
    Should be equal as strings   '${Date_Of_Birth}'      '${Conver_Date}'
    Should be equal as strings   '${Pet_Catagory}'      '${Pet_Type}'


Click On Pet Submit Button
     Click Button   css:${Submit_Btn}