*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1 Swipe
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=samsung
  ...  appActivity=com.adda247.modules.home.HomeActivity
  ...  appPackage=com.adda247.app
  ...  noReset=true

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='STATE EXAMS']  10s
  Click Element    xpath=//android.widget.TextView[@text='STATE EXAMS']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='West Bengal']  10s
  Click Element    xpath=//android.widget.TextView[@text='West Bengal']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Hello']  10s
  Click Element    xpath=//android.widget.TextView[@text='Hello']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Email/Phone']  10s
  Click Element    xpath=//android.widget.TextView[@text='Email/Phone']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Login']  10s
  Click Element    xpath=//android.widget.TextView[@text='Login']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in with Google']  10s
  Click Element    xpath=//android.widget.TextView[@text='Sign in with Google']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='riji098721@gmail.com']  30s
  Click Element    xpath=//android.widget.TextView[@text='riji098721@gmail.com']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='STUDY MATERIAL']  10s
  Click Element    xpath=//android.widget.TextView[@text='STUDY MATERIAL']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Daily Quizzes']  10s
  Click Element    xpath=//android.widget.TextView[@text='Daily Quizzes']

  ${count}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='English Quiz: SSC MTS 25.01.2023']
  WHILE    ${count}==0
      Swipe By Percent    90    70    90    20
      ${count}  Get Matching Xpath Count    xpath=//android.widget.TextView[@text='English Quiz: SSC MTS 25.01.2023']
  END
  
  Click Element    xpath=//android.widget.TextView[@text='English Quiz: SSC MTS 25.01.2023']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='ATTEMPT']  10s
  Click Element    xpath=//android.widget.TextView[@text='ATTEMPT']

  Wait Until Page Contains Element    xpath=//*[contains(@text,'following')]    30s
  Element Should Contain Text    xpath=//*[contains(@text,'following')]    following instructions

  [Teardown]  Close Application