*** Settings ***

Documentation  This file contains test case related to invalid login

Resource    ../resource/base/common_functionalities.resource
Test Setup  Launch Browser and Navigate to URL
Task Teardown   Close Browser
Library  DataDriver  file=../test_data/test_data_excel.xlsx  sheet_name=InvalidLoginTest
Test Template  Invalid Login Template

*** Test Cases ***
TC1


*** Keywords ***
Invalid Login Template
  [Arguments]  ${username}  ${password}  ${expected_result}
  Click Element    xpath=//span[text()='Sign In / Join AJIO']
  Input Text    name=username    ${username}
  Click Element    xpath=//input[@type='submit']
  Click Element    xpath=//input[@type='button']
  Input Text    name=password    ${password}
  Click Element    xpath=//input[@type='submit']


  Element Should Contain    xpath=//div[contains(@class,'error-msg')]    ${expected_result}