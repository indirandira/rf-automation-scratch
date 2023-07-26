*** Settings *** 
Documentation       API Test
Resource        ${EXECDIR}/common/api.robot


*** Variables ***
${uri_user}         api/user

*** Test Cases *** 
GET API User
    Start API Connection                     
        ${URI}=     Set Variable        ${uri_user}
        ${response}=        Send GET Request API        ${URI}      ${none}