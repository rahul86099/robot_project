*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
  Open Browser  url=https://www.salesforce.com/in/form/signup/freetrial-sales/  browser=chrome
  Maximize Browser Window
  #Sleep    30s
  Input Text    UserFirstName  john
  Input Text    UserLastName  wick
  Input Text    UserEmail  john@gmail.com
  Select From List By Label    UserTitle  IT Manager
  Select From List By Label    CompanyEmployees  101 - 500 employees
  Select From List By Label    CompanyCountry  United Kingdom
  Click Element    xpath://div[@class='checkbox-ui']
  Click Element    start my free trial
  Element Text Should Be  xpath=//span[contains(@id,'UserPhone')]  Enter a valid phone number

