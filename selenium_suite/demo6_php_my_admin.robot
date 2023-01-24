*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Sales force registration
    Open Browser  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To  https://www.db4free.net/
    Click Element    link:phpMyAdmin »
    Switch Window  phpMyAdmin
    Input Text    input_username    test123
    Input Text    input_password    welcome123
    Click Element    input_go
    Close Browser