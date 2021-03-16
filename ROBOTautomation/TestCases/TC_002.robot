*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
TC_001 Variable Test
    @{list1}    create list    hello    22    23.23    World    Abcd1234
    #${list_length}  get length    ${list1}
    #log to console    ${list_length}
    #${list_data}=    get from list    ${List1}    3

    : FOR  ${i}    IN   @{List1}
    \   log to console  ${i}

*** Keywords ***
