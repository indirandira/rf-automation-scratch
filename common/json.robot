Resource        ${EXECDIR}/common/config.robot
Resource        ${EXECDIR}/common/library.robot
Documentation   JSON General Function

*** Keywords ***
Read JSON File From The Specified Path
    [arguments]         ${jsonFilePath}
    ${jsonFile}=        Load Json From File     ${jsonFilePath}
    Log                 ${jsonFile}
    [Return]            ${jsonFile}

Convert Response Body into JSON
    [arguments]             ${response}
    ${responseBodyToJSON}=  To Json  ${response.content}    pretty_print=True
    Log                     ${responseBodyToJSON}
    [return]                ${responseBodyToJSON}

Convert Response Body into String
    [arguments]                 ${response}
    ${responseBodyToString}=    Convert To String           ${response.content}
    Log                         ${responseBodyToString}
    [return]                    ${responseBodyToString}

Read Value from Specific Key in The Read jsonFile
    [Arguments]     ${jsonFile}       ${variableKey}
    ${value}=       Get Value From Json       ${jsonFile}       ${variableKey}
    Log             ${value}
    [Return]        ${value}