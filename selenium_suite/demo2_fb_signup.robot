*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Register
  Open Browser  url=https://www.facebook.com/  browser=chrome
  Maximize Browser Window
  Set Selenium Implicit Wait    30s
  Click Element    link:Create New Account
  Input Text    firstname    Rahul
  Input Text    lastname    Yadav
  Input Text    reg_email__    rahul12@gmail.com
  Input Text    reg_passwd__    welcome123
  Select From List By Label    id:day  18
  #Select From List By Label    id:month  Apr
  Select From List By Index    month  3
  Select From List By Label    id:year  2000
  Click Element  xpath://input[@value='-1']
  Click Element    websubmit
  Element Text Should Be    //span[id@attribute='UserPhone']    Enter a valid phone number