###########
Text outside of the code section is ignored and automatically a comment:
###########

I can highly recommend to check out the official documentation of robot framework.
I used it as my source for this basic information program: Source:
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-started

*** Settings ***
Documentation  In this program I will cover most basic functions robot framework
...            you can write multi line with the three ...
...            This will work for all data sections
Library        SeleniumLibrary
Library    Collections


*** Variables ***
# local variables
# with and without pipe character
# ${} is a scalar
# @{} is a list
# &{} is a dictionary
| ${VAR1}        | abc
${VAR2}            def
${WEBSITE}        https://www.google.com
@{LISTPERSONS}    Person1
...                Person2
&{DICUSER1}        familyname=Doe    firstname=John    address=Fakestreet    
&{DICUSER1}        familyname=Doe    firstname=Sebastian    address=Fakestreet    

*** Settings ***
# Different settings for all (global) test cases
Test Setup        # Run before tests
Test Teardown     # Run after tests
Test Template     # Templates for testcases
Test Tags         # Tags for testcases
Test Timeout      # Timeout until the testcase fails

*** Test Cases ***
# Section where all the test cases will be defined
Basic Test Case
    Should Not Be Equal As Strings    ${VAR1}    ${VAR2}

Using Variables
    # Scalar
    Should Not Be Equal As Strings    ${VAR1}    ${VAR2}

    # List
    # List keywords expect scalar variables ${}
    ${x} =    Get From List    ${LISTPERSONS}    0
    Log    \n \n Output List 1 \n \n ${x}    console=yes
    Log To Console    \n \n Output List 2 \n \n ${x}
    List Should Contain Value    ${LISTPERSONS}    Person1

    # Dictionary
    ${x} =    Get From Dictionary    ${DICUSER1}    firstname    default
    Log To Console    \n \n Output Dictionary \n \n ${x}
    

Manipulation of variables
    ${VAR2}  Set Variable  abc
    Should Be Equal As Strings    ${VAR1}    ${VAR2}

Using Keywords with Arguments
    Start Browser  ${WEBSITE}  edge
    Stop Browser

Testing with local Settings
    [Tags]    Standard    Build
    [Documentation]    This test is just to show how local settings work
    [Setup]    Log    Log Setup
    [Teardown]    Log    Log Teardown

    Should Be Equal As Strings    a    a


*** Keywords ***
# For myself I see Keywords as a kind of methods
Start Browser
    [Arguments]    ${url}  ${browser}
    Open Browser    ${url}  ${browser}

Stop Browser
    Close Browser
