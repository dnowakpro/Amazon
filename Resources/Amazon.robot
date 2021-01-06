*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/ProductList.robot
Resource  ../Resources/PO/ProductPage.robot
Resource  ../Resources/PO/CartPage.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Type Search
    TopNav.Click Search Button
    ProductList.Wait Search Results
    ProductList.Search Results Assertions

Select Product from Search Results
    ProductList.Select First Product
    ProductPage.Wait Product Page

Add Product to Cart
    ProductPage.Add To Cart
    CartPage.Wait Product Is Added To Cart
    CartPage.Verify Product Is Added
