*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser    browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    15s
  Go To    url=https://demo.openemr.io/b/openemr/interface/login/login.php?site=default
   #Run Keyword And Ignore Error  Click Element    xpath=//input[text()='No Thanks']
   Input Text    authUser    admin
   Input Text    clearPass    pass
   Click Element    xpath=//select[@name='languageChoice']
   Select From List By Label    name=languageChoice  English (Indian)
   Click Element    id=login-button
   Mouse Over    xpath=//div[@role='button']
   Click Element  xpath=//div[text()='New/Search']
   Select Frame    xpath=//iframe[@name='pat']
   Input Text    form_fname    Rahul
   Input Text    form_lname    yadav
   Click Element    form_DOB
   Input Text    form_DOB    24/01/2023
   Click Element    form_sex
   Click Element    xpath=//option[text()='Male']
   Click Element    create
   Unselect Frame
   Select Frame    xpath=//iframe[@id='modalframe']
   Click Element   xpath=//input[@value='Confirm Create New Patient']

   ${alert_text}  Handle Alert  action=ACCEPT  timeout=30s
   Log To Console    ${alert_text}
   Should Contain    ${alert_text}    New Due Clinical Reminders
   Click Element    xpath=//div[@class='closeDlgIframe']
   Should Contain    xpath=//*[contains(text(),'Rahul yadav')]    Rahul yadav

   [Teardown]  Close Browser