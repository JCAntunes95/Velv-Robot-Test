*** Settings ***
Library    SeleniumLibrary

Resource    ../Settings/WebSettings.robot
Resource    Pages/BasePage.robot
Resource    Pages/ProductsPage.robot
Resource    Pages/CartPage.robot

*** Variables ***
${BROWSER}              ${WebSetting.Browser}
${TIMEOUT}              ${WebSetting.Timeout}
${BROWSER_WIDTH}        ${WebSetting.BrowserWidth}
${BROWSER_HEIGHT}       ${WebSetting.BrowserHeight}
${INCOGNITO_OPTIONS}    ${WebSetting.IncognitoOption}

*** Keywords ***
Base.Start_Browser "${URL}"
    [Documentation]    Open Incognito Browser on the provided URL
    Open Browser    About:blank    ${BROWSER}    options=${INCOGNITO_OPTIONS}
    Set Window Size    ${BROWSER_WIDTH}    ${BROWSER_HEIGHT}
    Delete All Cookies
    Set Selenium Implicit Wait    ${TIMEOUT}
    Go To    ${URL}

Base.Finish_Test
    [Documentation]    Take a screenshot and close Browser
    Capture Page Screenshot
    Close Browser