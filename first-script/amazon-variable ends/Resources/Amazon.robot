*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/Product.robot
Resource  ../Resources/PO/SearchResult.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Cart.robot

*** Keywords ***

Search For the Product
    LandingPage.Load
    LandingPage.Varify Page Loaded
    TopNav.Search For Product
    SearchResult.Verify Search Completed
    #Click Link  css=.a-carousel-viewport > .a-carousel :nth-child(1)  > div.sg-col-inner  a[href*='/dp/B0844JKGSK']
    #Click Link  xpath=//*[@id="anonCarousel1"]/ol/li[1]/div/div/div[2]/div/a
    #Select Product from Search Result

Select Product from Search Result
    SearchResult.Click Product Link
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout


