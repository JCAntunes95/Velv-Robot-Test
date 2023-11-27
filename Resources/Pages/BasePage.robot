*** Settings ***
Documentation    Handles the Keywords and Variables for http://automationexercise.com
Library    SeleniumLibrary

*** Keywords ***

Navigate to "${Link}" Page
    Scroll Element Into View    //a[contains(text(),"${Link}")]
    Click Element               //a[contains(text(),"${Link}")]