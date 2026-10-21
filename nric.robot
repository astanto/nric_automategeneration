*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${my_list} 
${loop_count} =    500
${content}

*** Test Cases ***
Create Text File
    OperatingSystem.Create File    nric_list.txt   ${EMPTY}
Click Button And Get Text
    Open Browser    https://samliew.com/nric-generator   chrome
        FOR    ${i}    IN RANGE    ${loop_count}
            
            Click Button    id:gen
            Wait Until Page Contains Element    id:barcode
            ${text} =       SeleniumLibrary.Get Element Attribute    id:barcode    alt
            Log   ${text}  
            OperatingSystem.Append To File  nric_list.txt  ${text}\n
        END
    Close Browser

*** Keywords ***
Click Button
    [Arguments]    ${locator}
    Click Element    ${locator}

Get Text
    [Arguments]    ${locator}
    ${text} =    Get Text    ${locator}
    [Return]    ${text}

Append To List
    [Arguments]    ${list}    ${item}
    Append To List    ${list}    ${item}
