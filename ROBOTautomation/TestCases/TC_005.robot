*** Settings ***
Documentation     A test suite with a single test for Login & Sign Up Forms
...               Created by hats' Robotcorder
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Login & Sign Up Forms test
    Open Browser    https://thetestingworld.com/testings/    ${BROWSER}
    Input Text    //input[@name="fld_username"]    testing
    Input Text    //input[@name="fld_email"]    testing_test@test.com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    Click Link    xpath=(//a[@href="#"])[3]
    Input Text    //input[@name="address"]    Vienna street
    Input Text    //input[@name="phone"]    1122334455
    Select From List By Value    //select[@name="country"]    14
    Input Text    //input[@name="zip"]    1234
    Click Element    //input[@name="add_type"]
    Select From List By Value    //select[@name="sex"]    2
    Select From List By Value    //select[@name="country"]    17
    Select From List By Value    //select[@name="state"]    332
    Select From List By Value    //select[@name="city"]    7259

    Close Browser