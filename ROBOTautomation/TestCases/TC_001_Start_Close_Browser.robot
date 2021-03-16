*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources1.robot
Documentation    This is a testing file to practise with Robot Framework
Test Setup    Start Browser and Maximize2
Test Teardown    close browser window



*** Variables ***
#${Browser}    Chrome
#${URL}    http://www.thetestingworld.com/testings
#${var2}    https://www.google.com

*** Test Cases ***
TC_001 Browser Start and Close -- name testcase
    [tags]    Smoke
    [documentation]    This test case is to practise different keywords :)
    [timeout]    2mins 50s
    #${Res}=    start browser and maximize    http://www.thetestingworld.com/testings    Chrome
    input text    name:fld_username    Hello



    #Open Browser    ${URL}    ${Browser}
    #Maximize Browser Window

    #title should be    Login & Sign Up Forms
    #element should be enabled    name:fld_username
    #element should be visible    name:fld_username

    #element text should not be    xpath://div[@id='tab-content1']/p    text here
    #element should not contain    xpath://div[@id='tab-content1']/p    text here
    #click link    xpath://a[text()='Login']
    #page should contain textfield    name:username
    #input text    name:username    Hello


    #select checkbox    name:remember
    #checkbox should be selected    name:remember
    #click element    name:remember
    #checkbox should not be selected    name:remember

    #page should contain    VIDEOS
    #page should not contain    11VIDEOS
    #click link    xpath://a[text()='Login']

    #multiple browsers
    #open browser    ${var2}    ${Browser}
    #switch browser    1
    #${url1}=    get location
    #log to console    ${url1}
    #click link    xpath://a[text()='Login']
    #switch browser    2
    #${url2}=    get location
    #log to console    ${url2}
    #input text    name:q    HelloWorld
    #close all browsers

    #wait until element contains    xpath://a[text()='Login']    Login
    #wait until page contains element    xpath://span[contains(text(), 'VIDEOS')]
    #click element    xpath://span[contains(text(), 'VIDEOS')]
    #click link    xpath://a[text()='Login']

    #open context menu    xpath://span[contains(text(), 'VIDEOS')]


    #click link    xpath://a[text()='Login']
    #press key    name:username    hello
    #press key    xpath://button[@type='submit']    \\13

    #double click element    xpath://a[text()='Login']
    #mouse down    xpath://a[text()='Login']
    #mouse up    xpath://a[text()='Login']
    #mouse over    xpath://span[contains(text(), 'VIDEOS')]

    #execute javascript    window.scrollTo(0,1000)
    #sleep    10 seconds
    #Set Selenium Speed    2seconds


    #Enter Username Email    TestingWorld    roxanna_wijtsma@outlook.com
    #Clear Element Text    name:fld_username
    #Select Radio Button  add_type  office
    #Select Checkbox    name:terms
    #Click Link    xpath://a[text()='Read Detail']
    #Input Text    id:email    hello
    #Input Text    id:pass    bye
    #Click button:   Click Button    xpath://input[@type='submit']


    #capture page screenshot    TC1.png
    #Select From List By Index    name:sex


    #Close Browser


#list -> many data to be stored beter list dan een variable
#TC_001 variable test
#    @{list1}    create list    hello    22    23.23    World    Abcd1234
#    ${list_length}  get length    ${list1}
#    log to console    ${list_length}

Robot Next Test
    [tags]    Smoke    Sanity
    select radio button    add_type    office


*** Keywords ***
#Local keywords with arguments
Enter Username Email
    [Arguments]    ${username}    ${email}
    Input Text    name:fld_username    ${username}
    Input Text    xpath://input[@name='fld_email']    ${email}

#Local keywords without arguments
#Enter Username Email
    #Input Text    name:fld_username    Hello
    #Input Text    xpath://input[@name='fld_email']    hello_email

#Set variable in Testcase
#${Var1}=   se variable    Helloworld
#log to console    ${Var1}

#Save report, output an dlogs to specific location.
#\ROBOTautomation>robot -r ./Report/Report.html -o ./Report/output.xml -l  ./Report/logs TestCases

