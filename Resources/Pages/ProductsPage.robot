*** Settings ***
Documentation    Handles the Keywords and Variables for https://automationexercise.com/products
Library    SeleniumLibrary

*** Variables ***

${inptProductSearch}       //input[@id="search_product"]
${btnSubmitProduct}        //button[@id="submit_search"]
${txtProductPrice}         (//div[@class="single-products"]//h2)[1]
${btnListedAddToCart}      (//div[@class="single-products"]//a[contains(@class,"add-to-cart")])[1]
# ${btnOverlayAddToCart}     (//div[@class="single-products"]//a[contains(@class,"add-to-cart")])[2]
${lnkCart}                 //div[@class="modal-body"]//a[@href="/view_cart"]

*** Keywords ***

Verify search bar is visible
    Wait Until Page Contains Element    ${inptProductSearch}

Write '${ProductName}'
    Input Text    ${inptProductSearch}    ${ProductName}

Click on the 'Search Button'
    Click Button    ${btnSubmitProduct}

Verify '${ProductName}' is visible
    Element Should Be Visible    //div[@class="single-products"]//p[contains(text(),"${ProductName}")]

Add product to cart
    ${Price}=    Get Element Attribute    ${txtProductPrice}    text()
    Set Global Variable    ${Price_Total}    ${Price}
    Scroll Element Into View    ${btnListedAddToCart}
    Click Element    ${btnListedAddToCart}

Click on 'Cart' button
    Click Element    ${lnkCart}