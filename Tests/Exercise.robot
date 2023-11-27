*** Settings ***
Documentation    Exercise for Velv - CACIB Robot Framework Test

Resource         ../Resources/Base.robot

Test Setup       Base.Start_Browser "http://automationexercise.com"
Test Teardown    Base.Finish_Test

*** Test Cases ***
Velv - CACIB Exercise
    Navigate to "Products" Page
    Verify search bar is visible
    Write 'men tshirt'
    Click on the 'Search Button'
    Verify 'Men Tshirt' is visible
    Add product to cart
    Click on 'Cart' button
    Verify that the product is visible in cart
    Verify that product value are correct