*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot

*** Variables ***
${Browser}    Chrome
${URL}    http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Fetch Data
    #Create Folder at Runtime    Hello12345    Testing
    Concate username and password    testing    password1
    open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    input text    name:fld_username    Testing
    input text    name:fld_email    testingworldinida@gmail.com
    input text    name:fld_password    123456
    ${PageTitle}=    get title
    log    ${PageTitle}
    ${Speed}=    get selenium speed
    Log    ${Speed}
    ${Value}=    get value    xpath://input[@type='submit']
    log    ${Value}
    ${Text}=    get text    xpath://a[@class='displayPopup']
    log    ${Text}
    select from list by index    name:sex    1
    ${Val}=    get selected list value    name:sex
    log    ${Val}
    ${ActualURL}=    get location
    log    ${ActualURL}
    ${Pagehtml}=    get source
    log    ${Pagehtml}
    ${elementclass}=    get element attribute    name:fld_username    class
    log    ${elementclass}
    ${elementcount}=    get element count    class:field
    log    ${elementcount}

