*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot


*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/

*** Test Cases ***
Robot Fetch Data
    open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    click element    xpath://a[text()='Login']
    input text    id:username    testing
    input text    id:password    testing
    click button    xpath://button[@type='submit']
    sleep    5 seconds
