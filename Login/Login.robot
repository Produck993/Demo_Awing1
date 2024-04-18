*** Settings ***
Library    SeleniumLibrary
Resource    ../ultils/keyworld.robot
*** Variables ***

*** Keywords ***
Login With True Password
    Open
    Maximize Browser Window
    Set Selenium Speed    0.2
    Title Should Be    DASHBOARD | AWING ID SYSTEM
    Input Text    //input[@name="username"]    admin
    Click Element    //button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-19f3993"]
    Input Text    //input[@name="password"]    Awing@123
    But    xpath=//*[@id=":r2:"]
    Sleeping
Login with Wrong Password
    Open
    Maximize Browser Window
    Title Should Be    DASHBOARD | AWING ID SYSTEM
    Input Text    //input[@name="username"]    admin
    Click Element    //button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-19f3993"]
    Input Text    //input[@name="password"]    Awing@
    Click Button    xpath=//*[@id=":r2:"]
    Wait Until Element Contains    xpath=//div[@role='alert']    Xin vui lòng nhập đúng và đủ thông tin
    Sleeping

# *** Test Cases ***
# Login
#     Login with True Password
#     Close Browser
# Login with fail pass
#     Login with Wrong Password
#     Close Browser