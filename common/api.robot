*** Settings ***
Resource        ${EXECDIR}/common/config.robot
Resource        ${EXECDIR}/common/library.robot
Variables        ${EXECDIR}/etc/conf/conf.yaml
Documentation   API General Function

*** Keywords ***
Start API Connection
    create session          ${alias}        ${base_url_service.user}

Send GET Request API
    [Arguments]          ${URI}      ${params}
    ${response}=   GET On Session            ${alias}       ${URI}      ${params}
    log to console      ${response}
    [Return]            ${response}

Send POST Request API
    [Arguments]          ${URI}      ${params}          ${payload}
    ${response}=         POST On Session       ${alias}      ${URI}         ${params}          ${payload}                 headers=${headers} 
    Log                  ${response.content}
    Log                  ${response.headers}
    [Return]             ${response}