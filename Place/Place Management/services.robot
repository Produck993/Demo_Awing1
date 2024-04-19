*** Settings ***
Library    SeleniumLibrary    
Resource    ../../Domain/Domain.robot
Resource    ../../ultils/keyworld.robot
*** Variables ***
*** Test Cases ***
# DynamicLinkToDetail1
#         DynamicLinkToDetail
#         Search
*** Keywords ***
DynamicLinkToDetail
    # Click on your domain
    DynamicLink    xpath=//*[@id="root"]/div/div[1]/div/div[2]/ul/div[2]    xpath=//*[@id="root"]/div/div[1]/div/div[2]/ul/div[3]/div/div/div
    Ele    //*[@id="root"]/div/div[1]/div/div[2]/ul/div[3]/div/div/div/a[1]
CreatePlace
    But     xpath=//*[@id="main-content"]/div/div[1]/div/button[1]
    Input Text    xpath=//*[@id="name"]    TestPlace 1
    Input Text    xpath=//*[@id="ip"]    Test IP
    Input Text    xpath=//*[@id="placeSelectionParameter"]    Nhap tham so bo sung
    Input Text    xpath=//*[@id="description"]    Day la router phat wifi tai lotusa lang ha
    #Dia chi
    Ele          xpath=(//b)[2]
    Ele    //*[@id=":r10:"]
    Input Text    //*[@id=":r10:"]    Thành phố Hà Nội
    Press Keys    //*[@id=":r10:"]    ENTER
    Ele    //*[@id=":r12:"]
    Input Text    //*[@id=":r12:"]     Quận Đống Đa
    Press Keys    //*[@id=":r12:"]     ENTER
    Ele    //*[@id=":r14:"]
    Input Text    //*[@id=":r14:"]    Phường Láng Hạ
    Press Keys    //*[@id=":r14:"]    ENTER
            # Nhap so nha
    Input Text    xpath=//*[@id=":r16:"]    34 Lang Ha
    Wait Until Element Is Visible    xpath=//*[@id=":r17:"]
    Ele    //div[@class="MuiGrid-root MuiGrid-container css-1b1xix7"]
    Input Text    //input[@class="goongjs-ctrl-geocoder--input"]    34 Láng Hạ, Láng Hạ, Đống Đa, Hà Nội
    Press Keys    //input[@class="goongjs-ctrl-geocoder--input"]    ENTER
    #AccessPoint
    Ele    xpath=(//b)[3]
    Ele    xpath=//div[@id='apControllerCode']
    Ele    xpath=(//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-tlijsu"])[4]
    Ele    xpath=//div[@id='authenticationMethodCode']
    Ele    xpath=(//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-tlijsu"])[3]
    Ele    xpath=//div[@id='authenticationProfilePrimaryId']
    Ele    xpath=(//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-tlijsu"])[5]
    # Ele    xpath=//div[@class='MuiAutocomplete-endAdornment css-2iz2x6']
    # Select Checkbox    
    Input Text    xpath=//*[@id="aspString"]    fa:2e:34:ca:6e:8e 85:88:a0:fd:51:da
    # Wait Until Element Is Enabled    xpath=//button[@id=':r3:']
    But    xpath=//button[@aria-label='Close']
    Ele    xpath=//button[@class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium css-lpy84s"]

Update Status Place
    Click Element    //div[@class="MuiListItemText-root css-1tsvksn"]
    Click Element    xpath=(//td[@class="MuiTableCell-root MuiTableCell-body MuiTableCell-sizeMedium css-q34dxg"])[29]
    #Edit
    Clear Element Text    xpath=//*[@id="name"]
    Input Text    xpath=//*[@id="name"]    QA_LTS Lang Ha NetWork_auto
    #Dia chi
    Ele          xpath=(//b)[2]
    Ele    xpath//*[@id=":r6b:"]
    Clear Element Text    xpath=//*[@id=":r6b:"]
Change Status Place
    Ele   xpath=//body[1]/div[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[4]/div[1]
    Ele    xpath=(//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-tlijsu"])[3]
    Click Element    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium css-lpy84s"]
    Wait Until Element Is Visible        xpath=//div[@role='alert']
    Sleeping
    Ele   xpath=//body[1]/div[1]/div[1]/div[2]/main[1]/div[1]/div[1]/div[2]/div[1]/table[1]/tbody[1]/tr[1]/td[4]/div[1]
    Ele    xpath=(//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-tlijsu"])[1]
    Click Element    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium MuiButton-root MuiButton-text MuiButton-textPrimary MuiButton-sizeMedium MuiButton-textSizeMedium css-lpy84s"]
    Wait Until Element Is Visible        xpath=//div[@role='alert']
Search
    But    xpath=//button[normalize-space()='ID']
    Input Text    //input[@class="MuiInputBase-input css-mnn31"]   5565865530685307122
    Press Keys    xpath=//input[@class="MuiInputBase-input css-mnn31"]    ENTER
    But    xpath=//*[@id="main-content"]/div/div[1]/div/div/button[4]
    Wait Until Element Is Visible    xpath=//*[@id="button-autocomplete"]
    But     xpath=//*[@id="button-autocomplete"]
    Sleeping
    Ele     xpath=//div[text()='Status']/following-sibling::div//input
    Input Text    xpath=//div[text()='Status']/following-sibling::div//input    Active
    Ele     //ul[contains(@id,'listbox')]/div/div[text()='Active']
    
    # //*[@id=":ri:"]