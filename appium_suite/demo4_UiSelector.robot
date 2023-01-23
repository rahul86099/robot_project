*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
TC1 Swipe
  Open Application    remote_url=http://localhost:4723/wd/hub
  ...  platformName=android
  ...  deviceName=samsung
#  ...  app=C:\\Users\\40032436\\Components${/}khan-academy-7-3-2.apk
  ...  appActivity=org.khanacademy.android.ui.library.MainActivity
  ...  appPackage=org.khanacademy.android
  ...  noReset=true

  Set Appium Timeout    20s

  Run Keyword And Ignore Error  Wait Until Page Contains Element    android=UiSelector().text("Dismiss")     30s
  Run Keyword And Ignore Error  Click Element    android=UiSelector().text("Dismiss")

  Wait Until Page Contains Element    android=UiSelector().description("Settings")  30s
  Click Element    android=UiSelector().description("Settings")

  Wait Until Page Contains Element    android=UiSelector().textContains("Sign in")  30s
  Click Element    android=UiSelector().textContains("Sign in")

  Wait Until Page Contains Element    android=UiSelector().textContains("Sign up with email")  30s
  Click Element    android=UiSelector().textContains("Sign up with email")

  Wait Until Page Contains Element    android=UiSelector().textContains("First name")  30s
  Input Text    android=UiSelector().textContains("First name")  Rahul

  Wait Until Page Contains Element    android=UiSelector().textContains("Last name")  30s
  Input Text    android=UiSelector().textContains("Last name")  Yadav

  Wait Until Page Contains Element    android=UiSelector().textContains("Birthday")  30s
  Click Element    android=UiSelector().textContains("Birthday")

  Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input")
  Click Element    android=UiSelector().resourceId("android:id/numberpicker_input")
  Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input")
  Input Text    android=UiSelector().resourceId("android:id/numberpicker_input")    Dec

  Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
  Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
  Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
  Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)    20

  Wait Until Page Contains Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
  Click Element    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
  Clear Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
  Input Text    android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)    2000

  Click Element    android=UiSelector().resourceId("android:id/button1")

  Wait Until Page Contains Element    android=UiSelector().textContains("Email address")  30s
  Input Text    android=UiSelector().textContains("Email address")  rahul123@gmail.com

  Wait Until Page Contains Element    android=UiSelector().textContains("Password")  30s
  Input Text    android=UiSelector().textContains("Password")  1232456

  Click Element    android=UiSelector().textContains("CREATE")

  Wait Until Page Contains Element    android=UiSelector().textContains("Invalid password")    30s
  Element Should Contain Text    android=UiSelector().textContains("Invalid password")    Invalid password

  [Teardown]  Close Application