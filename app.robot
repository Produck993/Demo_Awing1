*** Settings ***
Library    SeleniumLibrary
Resource    ./Login/Login.robot
Resource    ./Place/Place Management/services.robot
Resource    ./Place/Access Point Management/services.robot
Resource    ./Domain/Domain.robot
*** Test Cases ***
Test theo kich ban
    Login With True Password
    # Click on your domain