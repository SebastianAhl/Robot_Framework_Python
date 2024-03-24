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


*** Variables ***
# local variables
# with and without pipe character
| ${VAR1}        | abc
${VAR2}            def
${WEBSITE}        https://www.google.com

*** Settings ***
# Different settings for the test cases
Test Setup        # Run before tests
Test Teardown     # Run after tests
Test Template     # 
Test Tags         # 
Test Timeout      # 

*** Test Cases ***
# Section where all the test cases will be defined
Basic Test Case
    Should Not Be Equal As Strings    ${VAR1}    ${VAR2}

Manipulation of variables
    ${VAR2}  Set Variable  abc
    Should Be Equal As Strings    ${VAR1}    ${VAR2}

Using Keywords with Arguments
    Start Browser  ${WEBSITE}  edge
    Stop Browser




*** Keywords ***
# Kind of methods
Start Browser
    [Arguments]    ${url}  ${browser}
    Open Browser    ${url}  ${browser}

Stop Browser
    Close Browser
