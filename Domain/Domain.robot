*** Settings ***
Library    SeleniumLibrary
Resource    ../ultils/keyworld.robot
Resource        ../Login/Login.robot   
 
*** Variables ***
${LOGO}     //*[@id="root"]/div/header/div/a/img
# *** Test Cases ***
# ChooseDomain
    # Open
    # Maximize Browser Window
    # Title Should Be    DASHBOARD | AWING ID SYSTEM
    # Input Text    //input[@name="username"]    admin
    # Click Element    //button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-edgeEnd MuiIconButton-sizeMedium css-19f3993"]
    # Input Text    //input[@name="password"]    Awing@123
    # But    xpath=//*[@id=":r2:"]
    # Sleeping
    
    # Click on your domain
    # Sleeping
*** Keywords ***
Click on your domain
        # Login With True Password
        Wait Until Element Is Visible    ${LOGO}    timeout=5s
        Title Should Be    DASHBOARD | ADAPTIVE CAMPAIGN MANAGEMENT
        DynamicLink    xpath=//*[@id="root"]/div/header/div/div[2]    xpath=//*[@id="popover-domain"]/div[3]/div[1]
        DynamicLink    xpath=//*[@id="popover-domain"]/div[3]/div[3]/button    xpath=/html/body/div[2]/div[3]/div[2]/div/div[1]/div/div
        Ele    xpath=(//div[@class="MuiToolbar-root MuiToolbar-gutters MuiToolbar-regular css-i6s8oy"])[3]
        Input Text    //input[@class="MuiInputBase-input css-mnn31"]    LTS lang ha
        Press Keys    //input[@class="MuiInputBase-input css-mnn31"]   ENTER
        Ele    xpath=(//td[@class="MuiTableCell-root MuiTableCell-body MuiTableCell-sizeMedium css-q34dxg"])[1]
        