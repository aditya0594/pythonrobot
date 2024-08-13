*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Count webelement
    Open Browser    https://demo.guru99.com/test/newtours/      chrome
    ${webelementCount}=     Get Element Count   xpath://a
    Log To Console    ${webelementCount}

    @{list}     Create List
    FOR     ${i}    IN RANGE     1     ${webelementCount}+1
    ${list}=    Get Text    xpath:(//a)[${i}]
    Log To Console    ${list}
    END

