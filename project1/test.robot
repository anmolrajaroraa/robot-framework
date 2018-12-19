*** Settings ***
Documentation   Example file using space separated format
Library         OperatingSystem
Library         SeleniumLibrary

*** Variables ***
${url}          http://google.com
${path}         /workspace

*** Test Cases ***
Test1
    [Documentation]     First Test
    [Tags]              severe
    Log To Console      Hello, world!
    Check Directory     ${path}

Test2
    Should Be Equal     Hello, world!    Hello, world!
    Open Browser        ${url}  chrome
    Close Browser
    Log To Console      Bye, world!

*** Keywords ***
Check Directory
    [Arguments]         ${path}
    Directory Should Exist  ${path}
    Log To Console          Directory exists
