*** Comments ***
Write code to list all file names in below directory
C:\Users\40032436\AppData\Local\Temp

*** Settings ***
Library  OperatingSystem
Library    Collections
Library    String

*** Test Cases ***
TC1
  ${list}  List Files In Directory    path=C:\\Users\\40032436\\AppData\\Local\\Temp
  Log To Console    ${list}
  Log List  ${list}

TC2
  Remove File    path=C:\Users\40032436\AppData\Local\Temp\demoooo
  File Should Not Exist    path=C:\Users\40032436\AppData\Local\Temp\demoooo

TC3
  ${name}  Set Variable  robot framework session
  ${u_name}  Convert To Upper Case  ${name}
  Log To Console    ${u_name}
  ${final_str}  Remove String    ${u_name}  SESSION
  Log To Console    ${final_str}

TC4
  ${num1}  Set Variable  $200,100
  ${num2}  Set Variable  $200
  ${final_num1}  Remove String    ${num1}  $  ,
  ${final_num2}  Remove String    ${num2}  $
  ${sum}  Evaluate    ${final_num1}+${final_num2}
  Log To Console    ${sum}