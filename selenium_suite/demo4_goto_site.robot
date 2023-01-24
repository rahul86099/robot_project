*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser  url=https://www.goto.com/meeting/  browser=chrome
  Maximize Browser Window
  #Sleep    30s
  Click Element  truste-consent-button
  Click Element  link:Try Free
  Input Text  first-name  john
  Input Text  last-name  wick
  Input Text  login__email  john@gmail.com
  Select From List By Label    CompanySize  10 - 99
  Click Element    xpath=//button[containstext()='Start My Trial']