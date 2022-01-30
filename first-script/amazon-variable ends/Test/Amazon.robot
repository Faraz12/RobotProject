*** Settings ***
Documentation  This is some basic info about Suit
Test Setup  Common.Begin Web Test Cases
Test Teardown  Common.End Web Test

Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  samsung s10
*** Test Cases ***
User must sign in to check out
    [Documentation]  This is basic info about Test
    [Tags]  smoke
    Amazon.Search For the Product
    Amazon.Select Product from Search Result
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

User search for the product
    [Documentation]  This is basic info about Test
    [Tags]  current
    Amazon.Search For the Product

