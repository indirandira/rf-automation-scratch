*** Settings *** 
Documentation       API Test
Resource        ${EXECDIR}/common/api.robot


*** Variables ***
${Base_URL}         https://reqres.in/

*** Test Cases *** 
GET API User
    create session          Get_user        ${Base_URL}
    ${response}=   GET On Session             Get_user             api/users
    log to console      ${response}    