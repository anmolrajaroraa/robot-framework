| *** Settings ***  |
| Documentation     | Example file using pipe separated format
| Library           | OperatingSystem

| *** Test Cases ***    |
| Test1                 | [Documentation]   | Example Test  |
|                       | Log To Console    | Hello, world! |
|                       | Check Directory   | /workspace    | Directory Found
| Test2                 | Should Be Equal   | Hello, world! | Hello, world!

| *** Keywords ***      |
| Check Directory       | [Arguments]       | ${path}       | ${message}
|                       | Directory Should Exist    | ${path}
|                       | Log To Console            | ${message}
