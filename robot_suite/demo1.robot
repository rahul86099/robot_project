*** Settings ***
Library  DateTime

*** Test Cases ***
TC1
  Log To Console  message=Rahul Yadav
  Log To Console  hello
  
TC2
  ${my_name} Set Variable  Rahul
  Log To Console  ${my_name}
 
TC3
  ${today_date}  Get Current Date
  Log To Console    ${today_date}

TC4
  ${radius}  Set Variable  10
  ${Area}  Evaluate  ${radius}*${radius}*3.14
  Log To Console  ${Area}