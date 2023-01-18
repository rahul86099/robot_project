*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Sales force registration
    Open Browser  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To  https://www.medibuddy.in
    Click Element  link=Login
    Click Element  xpath=//div[@class='coperate']
    Click Element  xpath=//div[@class='coperate']
    Input Text  name=userName    john
    Click Element  xpath=//button[@class='btn btn-primary']
    Input Text  name=password    john123
    Click Element  xpath=//input[@type='checkbox']
    Click Element    xpath=//button[@class='btn btn-primary']
    #Element Text Should Be  xpath=//*[contains(text(),'You have entered incorrect password. If you forgot the password please reset your password by clicking on the forgot password link.')]  You have entered incorrect password. If you forgot the password please reset your password by clicking on the forgot password link.
    Element Should Contain    xpath=//*[contains(text(),'incorrect password')]    You have entered incorrect password.