*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=samsung
  #...  browserName=chrome
  ...  app=C:\\Users\\40032436\\Components${/}khan-academy-7-3-2.apk

  ${page_source}  Get Source
  Log  ${page_source}
  Sleep    5s
  Close Application


TC3
  Open Application    remote_url=http://localhost:4723/wd/hub   platformName=android   #browserName=chrome
  ...  deviceName=Redmi
  ...  app=C:\\Users\\40032436\\Components${/}khan-academy-7-3-2.apk
  Sleep    15s
  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
  Click Element    xpath=//*[@text='Dismiss']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
  Click Element    xpath=//android.widget.TextView[@text='Sign in']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Sign in']    30s
  Click Element    xpath=//android.widget.TextView[@text='Sign in']

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    30s
  Input Text    xpath=//android.widget.EditText[@text='Enter an e-mail address or username']    rahul

  Wait Until Page Contains Element    xpath=//android.widget.EditText[@text='Password']
  Input Text    xpath=//android.widget.EditText[@text='Password']    123456

  Wait Until Page Contains Element    xpath=//android.widget.Button[@content-desc="Sign in"]  30s
  Click Element    xpath=//android.widget.Button[@content-desc="Sign in"]

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='There was an issue signing in']    30s
  Element Should Contain Text    xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
  
  Sleep    5s
  [Teardown]        Close Application

TC4
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=samsung
#  ...  app=C:\\Users\\40032436\\Components${/}khan-academy-7-3-2.apk
  ...  appActivity=org.khanacademy.android.ui.library.MainActivity
  ...  appPackage=org.khanacademy.android
  Sleep    15s
  Wait Until Page Contains Element    xpath=//*[@text='Dismiss']     30s
  Click Element    xpath=//*[@text='Dismiss']

  Wait Until Page Contains Element    xpath=//android.widget.Button[@text='Search']  30s
  Click Element    xpath=//android.widget.Button[@text='Search']

  Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='Arts and humanities']  30s
  Click Element    xpath=//android.widget.TextView[@text='Arts and humanities']

  Scroll Element Into View    xpath=//android.widget.TextView[@text='Art of Africa']