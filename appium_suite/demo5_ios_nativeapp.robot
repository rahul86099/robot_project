*** Settings ***
Library  AppiumLibrary


*** Test Cases ***
TC1
  &{dic}  Create Dictionary  buildName=khan
  ...  projectName=khan project
  ...  userName=rahulyadav_ghwSAi
  ...  accessKey=kR49RqwuHpZ1723racrz

  #Log To Console    ${dic}

  Open Application    remote_url=http://hub.browserstack.com/wd/hub
  ...  platformName=ios
  ...  deviceName=iPhone 11 Pro
  ...  app=bs://4c8855029b9101c934c0aed59c47e57a64bde478
  ...  platformVersion=13
  ...  bstack:options=${dic}

  ${app_source}  Get Source
  Log    ${app_source}

  Input Text    test-Username    standard_user
  Input Text    test-Password    secret_sauce
  Click Element    test-LOGIN
  
  Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
  Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])

  Wait Until Page Contains Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])
  Click Element    xpath=(//XCUIElementTypeOther[@name="test-ADD TO CART"])

  Click Element    xpath=//XCUIElementTypeOther[@name="test-Cart"]

  Wait Until Page Contains Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
  Click Element    xpath=//XCUIElementTypeOther[@name="test-CHECKOUT"]
  Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-First Name"]
  Input Text    xpath=//XCUIElementTypeTextField[@name="test-First Name"]    john
  Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]
  Input Text    xpath=//XCUIElementTypeTextField[@name="test-Last Name"]    joe
  Wait Until Page Contains Element    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]
  Input Text    xpath=//XCUIElementTypeTextField[@name="test-Zip/Postal Code"]    100022
  Click Element    xpath=//XCUIElementTypeOther[@name="test-CONTINUE"]
  Should Contain   xpath=//XCUIElementTypeStaticText[@label='Payment Information']   Payment Information

  [Teardown]  Close Application
