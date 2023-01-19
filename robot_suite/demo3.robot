*** Settings ***
Library    Collections
*** Variables ***
${BROWSER_NAME}  CHROME
${MOBILE_NUM}  898989898
@{COLORS}  red  green  yellow
&{MY_DETAILS}  name=Rahul  role=trainee  mobile=7878787878


*** Test Cases ***
TC9
  Log To Console    ${MY_DETAILS}[mobile]
TC10
  &{emp_dict}  Create Dictionary  emp_id=174  emp_name=jack  role=trainee
  Log To Console    ${emp_dict}[emp_name]
TC1
  ${my_name}  Set Variable  Rahul
  Log To Console    ${my_name}
  Log To Console    ${BROWSER_NAME}
  Log To Console    ${COLORS}
  
TC2
  Log To Console    ${COLORS}[2]
  Log To Console    ${COLORS}
  
TC3
    ${item_count}  Get Length  ${COLORS}
    Log To Console  ${item_count}

TC4
  @{fruits}  Create List  apple  orange  mango
  Log To Console    ${fruits}[1]
  #append grapes
  Append To List  ${fruits}  grapes
  Log To Console    ${fruits}
  #remove apple
  Remove Values From List    ${fruits}  apple
  Log To Console    ${fruits}
  #insert pineapple at index 1
  Insert Into List    ${fruits}    1    pineapple
  Log To Console    ${fruits}
  #print total item count
  ${len}  Get Length    ${fruits}
  Log To Console    ${len}
  #print fruits
  Log To Console    ${fruits}

TC5
  FOR    ${i}    IN RANGE    0    11
      Log To Console   ${i}

  END

TC6
  @{fruits}  Create List  orange  mango  apple  pineapple
  ${len}  Get Length    ${fruits}
  Log To Console    ${len}

  FOR    ${i}    IN RANGE    0    ${len}
      #Log To Console    ${i}
      Log To Console    ${fruits}[${i}]

  END

TC7
  @{fruits}  Create List  orange  mango  apple  pineapple
  FOR    ${fruit}    IN    @{fruits}
      Log To Console    ${fruit}

  END