*** Settings ***
Library  SeleniumLibrary

#Variables   LandingPage.yaml
Variables   OwnerPage.yaml

*** Keywords ***

Click on the Add New Owner Button
    Wait Until Page Contains  Find Owner
    Click Link  xpath:${Add_Owner_Btn}

Add Owner
    [Arguments]  ${first_name}  ${last_name}    ${address}  ${country}  ${phone_number}
    Wait Until Page Contains  Owner
    Input Text  css:${Input_First_Name}   ${first_name}
    Input Text  css:${Input_Last_Name}   ${last_name}
    Input Text  css:${Input_Address}   ${address}
    BuiltIn.Sleep   5
    Input Text  css:${Input_City}   ${country}
    Input Text  css:${Input_Telephone}   ${phone_number}

Submit Owner Button
    CLick Button   ${Submit_Owner_Btn}


Verify Added Owner Information Is Correct
    [Arguments]  ${first_name}   ${last_name}    ${address}  ${country}      ${phone_number}
    Wait Until Element Is Visible   css:${Owner_Information_Txt}
    ${Person_Name}  Get Text    css:${Name_Txt}
    Log     ${Person_Name}
    Log     ${first_name}
    Log     ${address}
    ${Person_Address}  Get Text  css:${Address_Txt}
    ${Person_City}  Get Text  css:${City_Txt}
    ${Person_Telephone}  Get Text    css:${Telephone_Txt}
    ${Full_Name}=  Evaluate      '${first_name}'+" "+'${last_name}'
    Log     ${Full_Name}
    Log     ${Person_Address}
    BuiltIn.Sleep   5
    Should be equal as strings   '${Full_Name}'      '${Person_Name}'
    Should be equal as strings   '${address}'      '${Person_Address}'
    Should be equal as strings   '${country}'      '${Person_City}'
    Should be equal as strings   '${phone_number}'      '${Person_Telephone}'


Find All Owner
    Click on the Find Owner Tab
    Click Button  css:${Find_Owner_Btn}

