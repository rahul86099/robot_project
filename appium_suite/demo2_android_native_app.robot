*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1 Sign Up
  [Documentation]  Working with native app
  ...  for automating sign up activity
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=samsung
  ...  app=C:\\Users\\40032436\\Components${/}khan-academy-7-3-2.apk

  Sleep    15s
  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
  Click Element    xpath=//*[@text='Dismiss']

  Wait Until Page Contains Element    xpath=//android.widget.ImageView[@content-desc="Settings"]  30s
  Click Element    xpath=//android.widget.ImageView[@content-desc="Settings"]

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']  30s
  Click Element    xpath=//android.widget.TextView[@text='Sign in']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign up with email']  30s
  Click Element    xpath=//android.widget.TextView[@text='Sign up with email']

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='First name']  30s
  Input Text    xpath=//android.widget.EditText[@text='First name']  Rahul

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Last name']  30s
  Input Text    xpath=//android.widget.EditText[@text='Last name']  Yadav

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Birthday']  30s
  Click Element    xpath=//android.widget.TextView[@text='Birthday']
  Wait Until Page Contains Element    xpath=//android.widget.EditText[@resource-id='android:id/numberpicker_input']
  Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
  Clear Text    xpath=//(android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
  Input Text    xpath=//(android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]    Aug

  Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  30s
  Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
  Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
  Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  04

  Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]  30s
  Click Element    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
  Clear Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
  Input Text    xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]    2001
  
  Click Element    xpath=(//android.widget.Button[@resource-id='android:id/button1'])

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Email address']  30s
  Input Text    xpath=//android.widget.EditText[@text='Email address']  rahul123@gmail.com

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Password']  30s
  Input Text    xpath=//android.widget.EditText[@text='Password']  1232456

  Click Element    xpath=(//android.widget.TextView[@text='CREATE'])

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Invalid password']    30s
  Element Should Contain Text    xpath=//android.widget.TextView[@text='Invalid password']    Invalid password

  [Teardown]  Close Application