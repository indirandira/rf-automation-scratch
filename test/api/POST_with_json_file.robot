*** Settings ***
Documentation       This is test case POST using json path
Resource        ${EXECDIR}/common/api.robot
Resource        ${EXECDIR}/common/json.robot

*** Variables ***
${uri_user}         api/users
${params}           ${none}
${alias}           ${none}
${json_default}     ${EXECDIR}/template/api/post_request_users.json

*** Test Cases ***
POST users with json path
    ${URI}=             Set Variable        ${uri_user}
    ${json_file}=       Read JSON File From The Specified Path         ${json_default}
    ${payload}=         Create Dictionary           jf=${json_file}
    Start API Connection
    ${response}=        Send POST Request API       ${URI}          ${params}           ${payload}
    ${status.code}=     convert to string       ${response.status_code}
    should be equal      ${status.code}     201
    ${res_body}=            convert to string       ${response.content}
    should contain  ${res_body}         Danang
    ${name}=        Read Value from Specific Key in The Read jsonFile          ${json_file}      $.name 
    should be equal                                             $ ${name[0]}        Danang