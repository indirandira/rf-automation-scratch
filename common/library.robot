*** Settings ***
Documentation   Mandatory Libraries
Library         RequestsLibrary
# Library         SeleniumLibrary     timeout=60      run_on_failure=SeleniumLibrary.Capture Page Screenshot
# Library         AppiumLibrary       timeout=60      run_on_failure=AppiumLibrary.Capture Page Screenshot
Library         Collections
Library         JSONLibrary
Library         DatabaseLibrary
Library         String
Library         Process
Library         DateTime
Library         FakerLibrary
Library         OperatingSystem
Library         ImapLibrary2
Library         jsonschema