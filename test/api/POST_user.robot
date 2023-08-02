*** Settings *** 
Documentation       API Test POST Request
Resource        ${EXECDIR}/common/api.robot
Resource        ${EXECDIR}/keyword/api/POST_user.robot

*** Variables ***
${uri_user}         api/users
${params}           ${none}

*** Test Cases *** 
POST API User
    Start API Connection                     
        ${URI}=                 Set Variable             ${uri_user}
    User Define Headers
        ${payload}=             Create Dictionary         name=ter      job=Engineer  
        ${response}=            Send POST Request API     ${URI}        ${params}              ${payload}          

        ${status.code}=     convert to string       ${response.status_code}
        should be equal      ${status.code}     201
        ${res_body}=            convert to string       ${response.content}
        should contain  ${res_body}         ter