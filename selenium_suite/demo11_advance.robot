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

TC4 Javascript
  Open Browser  browser=chrome
  Maximize Browser Window
  Go To    https://phptravels.net/
  #select the city as vadodara
  #Execute Javascript  document.querySelector('#select2-hotels_city-container').value='Vadodara,India'
  Click Element    select2-hotels_city-container
  Input Text    xpath=Vadodara,India
  #Input text id=checkin 31-10-2023
  Execute Javascript  document.querySelector('#checkin').value='31-10-2023'
  Sleep    4s
  #Input text id=checkin 29-11-2023
  Execute Javascript  document.querySelector('#checkout').value='29-11-2023'

TC5
  Open Browser  browser=chrome
  Maximize Browser Window
  Go To    https://www.redbus.in/
  Input Text    id=src    Central Bus Station, Vadodara
  Input Text    dest    Delhi Darwaja, Ahmedabad
  Click Element    rb-calendar_onward_cal
  Select From List By Label    rb-calendar_onward_cal  27

TC6 Checking error
  Open Browser  browser=chrome
  @{output}  Run Keyword And Ignore Error    Click Element    xpath=//a
  Log To Console    ${output}
  Log To Console    ${output}[0]
  Log To Console    ${output}[1]
  Log   ${output}

