*** Settings ***
Library    SeleniumLibrary
Resource    ../../Domain/Domain.robot
Resource    ../../ultils/keyworld.robot
*** Variables ***
*** Test Cases ***
DynamicLinkToDetail1
        DynamicLinkToDetail
        Delete
*** Keywords ***
DynamicLinkToDetail
    Click on your domain
    DynamicLink    xpath=//*[@id="root"]/div/div[1]/div/div[2]/ul/div[2]    xpath=//*[@id="root"]/div/div[1]/div/div[2]/ul/div[3]/div/div/div/a[4]
    Ele    xpath=//*[@id="root"]/div/div[1]/div/div[2]/ul/div[3]/div/div/div/a[4]
Create New AcessPoint
    Ele    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedPrimary MuiButton-sizeMedium MuiButton-containedSizeMedium css-1fa68s3"]
    Ele    xpath=//div[@class='MuiAutocomplete-endAdornment css-2iz2x6']
    Input Text    xpath=//*[@id=":rp:"]   QA_LTS Lang Ha NetWork
    Press Keys    xpath=//*[@id=":rp:"]   ENTER
    Input Text    //*[@id="aps"]    36:09:3c:db:a5:43 4b:b8:fb:c2:42:40
    Wait Until Element Is Enabled    //button[normalize-space()='Save']
    But    //button[normalize-space()='Save']
Update New AcessPoint
    Ele    xpath=//table[@aria-label='simple table']/tbody/tr[7]
    Press Keys    xpath=//*[@id="name"]    CTRL+a+BACKSPACE
    Clear Element Text   xpath=//*[@id="name"]
    Input Text   xpath=//*[@id="name"]     95-90-c7-55-7e-56
    Ele        xpath=/html/body/div[2]/div[3]/div[1]/div
    Wait Until Element Is Visible    xpath=//div[@class='css-1hzpd2y']
Delete
    Ele    xpath=//*[@id="main-content"]/div/div[2]/div/table/tbody/tr[7]/td[7]
    Ele    xpath=/html/body/div[2]/div[3]/div/div[2]/button[1]
# Search