*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/
    Select Frame    xpath=//frame[@name='login_page']
    Input Text  id=fldLoginUserId  test123
    Click Element    link=CONTINUE
    Unselect Frame

TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To  url=https://www.redbus.in/
    Click Element  id=i-icon-profile
    Click Element  id=signInLink
    Select Frame  xpath=//iframe[@class='modalIframe']
    Input Text  mobileNoInp  7878
    Element Should Contain    xpath=//*[contains(text(),'Please enter valid mobile')]    Please enter valid mobile number