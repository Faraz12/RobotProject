*** Settings ***


*** Variables ***
${My_Variable} =  This is my input Data

*** Test Cases ***
variables demostration
    Log  ${My_Variable}

variables demostration 2
    Log  ${My_Variable}

*** Keywords ***


