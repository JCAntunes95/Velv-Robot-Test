*** Settings ***
Documentation    Handles the Keywords and Variables for https://automationexercise.com/view_cart
Library    SeleniumLibrary

Resource    ProductsPage.robot

*** Variables ***

${lstFirstProduct}        //tr[@id="product-2"]
${txtProductTotalPrice}   //p[@class="cart_total_price"]

*** Keywords ***

Verify that the product is visible in cart
    Wait Until Element Is Visible    ${lstFirstProduct}

Verify that product value are correct
    Element Attribute Value Should Be    ${txtProductTotalPrice}    text()    ${Price_Total}
