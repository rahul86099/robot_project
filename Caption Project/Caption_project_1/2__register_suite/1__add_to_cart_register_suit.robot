*** Settings ***

Documentation  This file contains test case related to invalid login

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Task Teardown   Close Browser
Library  DataDriver  file=../test_data/test_data_excel.xlsx  sheet_name=InvalidRegisterSuite
Test Template  Vaalid Register Template

*** Test Cases ***
TC1

*** Keywords ***
Vaalid Register Template
  [Arguments]  ${username}  ${password}  ${expected_header}

  Click Element    xpath=//span[text()='Sign In / Join AJIO']
  Input Text    name=username    ${username}
  Click Element    xpath=//input[@type='submit']
  Click Element    xpath=//input[@type='button']
  Sleep    30s
  Input Text    id=pwdInput    ${password}
  Sleep    30s
  Click Element    xpath=//input[@type='submit']


    Mouse Over    link=MEN
    Click Element    link=Jackets & Coats
    Click Element   xpath=//div[text()='Sleeveless High-Neck Bomber Jacket with Detachable Hood']
    Switch Window  Buy Black Jackets & Coats for Men by Fort Collins Online | Ajio.com
    Click Element    xpath=//span[text()='L']
    Click Element    xpath=//div[@class='btn-gold']
    Switch Window  MAIN
    Click Element    xpath=//div[text()='Hooded Quilted Jacket']
    Switch Window  Buy Black Jackets & Coats for Men by Campus Sutra Online | Ajio.com
    Click Element    xpath=//span[text()='L']
    Click Element    xpath=//div[@class='btn-gold']
    Switch Window  MAIN
    Click Element    xpath=//div[@class='ic-cart ']
    Element Should Contain    xpath=//*[contains(text(),'Campus Sutra')][1]   ${expected_header}
    Close All Browsers