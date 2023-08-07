*** Settings ***
Documentation       This is test case POST using json path
Resource        ${EXECDIR}/common/api.robot
Resource        ${EXECDIR}/keyword/api/POST_with_json_file.robot
Resource        ${EXECDIR}/common/json.robot

*** Variables ***
${uri_user}         api/users
${params}           ${none}
${json_default}     ${EXECDIR}/template/api/post_request_users.json

*** Test Cases ***
POST users with json path
    ${URI}=             Set Variable        ${uri_user}
    ${json_file}=       Read JSON File From The Specified Path         ${json_default}
    ${payload}=         Define payload users