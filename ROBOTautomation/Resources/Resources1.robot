*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeyword.py
library    ../TestData/ReadData.py

#*** Variables ***
#${URL}    http://www.thetestingworld.com/testings
#${Browser}    Chrome

#*** Keywords ***
#Start Browser and Maximize
#    open browser    ${URL}    ${Browser}
#    maximize browser window


####################### met parameters
*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Start Browser and Maximize
    [documentation]    This is an example of a user defined keyword met parameters en return value.
    [Arguments]    ${UserUrl}    ${InutBrowser}
    open browser    ${UserUrl}    ${InutBrowser}
    maximize browser window
    ${Title}=    get title
    [Return]    ${Title}


Start Browser and Maximize2
    open browser    http://www.thetestingworld.com/testings    Chrome
    maximize browser window

close browser window
    ${TitlePage}=    get title
    Log    ${TitlePage}
    close browser

Create Folder at Runtime
    [arguments]    ${foldername}    ${subfoldername}
    create_folder    ${foldername}
    create_subfolder    ${subfoldername}
    log    "task done succesfully"

Concate username and password
    [arguments]    ${username}    ${password}
    ${resultval}=    concatenate_two_values    ${username}    ${password}
    log    ${resultval}