*** Settings ***
Library  SeleniumLibrary

Documentation  This file contains test case related to valid login

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Task Teardown   Close Browser
Library  DataDriver  file=../test_data/test_data_excel.xlsx  sheet_name=ValidLoginTemplate
Test Template  Valid Login Template


*** Test Cases ***
TC1
*** Keywords ***
Valid Login Template
  [Arguments]  ${username}  ${password}  ${expected_result}

  Click Element    xpath=//span[text()='Sign In / Join AJIO']
  Input Text    name=username    ${username}
  Click Element    xpath=//input[@type='submit']
  Click Element    xpath=//input[@type='button']
  Sleep    30s
  Input Text    id=pwdInput    ${password}
  Sleep    30s
  Click Element    xpath=//input[@type='submit']