*** Settings ***
Documentation   Keywords for Get Total Order Aggregate V2
Resource        ${EXECDIR}/common/config.robot


*** Keywords ***
User Define Headers
    &{headers}=     Create Dictionary   Accept=application/json     Content-Type=application/json
    ...             x-app-debug=true
    Set Global Variable     ${headers}