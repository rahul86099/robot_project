*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    url=https://www.ilovepdf.com/pdf_to_word
  Choose File    xpath=//input[@type='file']    C:${/}Users/40032436/PycharmProjects/Day4/venv/Sample.pdf
  Sleep    5s
TC2
  Log To Console    C:\nUsers/40032436/PycharmProjects/Day4/venv/Sample.pdf

TC3
  Open Browser  browser=Chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    https://www.facebook.com/
  Input Text    css=#email    jack
  Input Text    css=#pass    pass123
  Click Element    css=button[name='login']
