*** Settings ***
Documentation        I want to open the google url and search for "something"
Library               SeleniumLibrary


*** Test Cases ***
Open Google.com and check the url
    Open Browser    url=https://www.google.com    browser=edge
    Input Text    xpath: /html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/textarea    something
    Press Keys    xpath: /html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/textarea   RETURN
    Close Browser

    