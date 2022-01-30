*** Settings ***


*** Variables ***
@{My_Variable} =  My name  Fraz khan  Age eww

*** Test Cases ***
variables demostration
    Log  @{My_Variable}[0]
    Log  @{My_Variable}[1]
    Log  @{My_Variable}[2]

variables demostration 2
    @{my_list_variable} =  Create List  Item1  Item2  Item3
    Log  @{my_list_variable}[0]
    Log  @{my_list_variable}[1]
    Log  @{my_list_variable}[2]


*** Keywords ***
