*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    url=https://nasscom.in/
  Mouse Over     xpath=//a[text()='Membership']
  Mouse Over    xpath=//a[text()='Become a Member']
  Click Element    link=Membership Benefits


TC2
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    url=https://nasscom.in/
  Mouse Over     xpath=//a[text()='Membership']
  Mouse Over    xpath=//a[text()='Become a Member']
  Click Element    link=Membership Benefits
  Click Element    xpath=//a[text()='Click to Apply Online ']
  #Scroll Element Into View    id=edit-field-company-profile-0-value
  Input Text    id=edit-field-company-profile-0-value    L&T
  Click Element    xpath=//span[@id='calculate-fee']
  ${alert_text}  Handle Alert  action=ACCEPT
  Log To Console    ${alert_text}
  Should Be Equal    ${alert_text}    Please enter the total revenue greater than ZERO.

TC3
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    url=https://nasscom.in/
  ${ele}  Get WebElement    xpath=//a[text()='Members Listing']
  Execute Javascript  arguments[0].click()  ARGUMENTS  ${ele}



