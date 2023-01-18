*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1 Sales force registration
    Open Browser  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To  https://www.online.citibank.co.in/
    Run Keyword And Ignore Error    Click Element    xpath=//a[@title='Close']
    #Click Element  xpath=//a[@class='fancybox-item fancybox-close']
    Click Element  xpath=//span[text()='Login']
    Switch Window  Citibank India
    Click Element  xpath=//div[@class='fl cup pt3']
    Click Element  xpath=//a[@class='sbSelector']
    Click Element  xpath=//a[text()='Credit Card']
    Input Text    id=citiCard1    4545
    Input Text    id=citiCard2    5656
    Input Text    id=citiCard3    8887
    Input Text    id=citiCard4    9998
    Input Text    id=cvvnumber    123
    Click Element  id=bill-date-long
    Select From List By Label  xpath=//select[@class='ui-datepicker-year']    2022
    Select From List By Label  xpath=//select[@class='ui-datepicker-month']    Apr
    Click Element  link=14
    Click Element  xpath=//input[@class='ctaBlue minWidth']
    Element Should Contain  id=ui-id-1  Please accept Terms and Conditions
    Click Element  xpath=//button[@class='ui-button ui-corner-all ui-widget']
    Close Browser
