*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Browser}    chrome
${URL}    https://id.awifi.vn/login?clientId=200&returnUrl=https://acm.awifi.vn/
${Locator_but}    ${EMPTY}
${ele}    ${EMPTY}
${time_sleep}    3s
${WebElement}    ${EMPTY}
${Visible}    ${EMPTY}
*** Keywords ***
Open  
    Open Browser    ${URL}     ${Browser}
But
    [Arguments]    ${Locator_but}
    Click Button    locator=${Locator_but}
Ele
    [Arguments]    ${ele}
    Click Element    locator=${ele}
Sleeping
    Sleep    ${time_sleep}
DynamicLink
    [Arguments]    ${dinamic}    ${WebElement}
    Click Element    locator=${dinamic}
    Wait Until Element Is Visible    ${WebElement}
Visible
    Wait Until Element Is Visible    ${Visible}     timeout=${time_sleep} 