*** Settings ***
Library     SeleniumLibrary



*** Test Cases ***
Table validation
	Open Browser    https://testautomationpractice.blogspot.com/    chrome
	Maximize Browser Window
	${row}=     Get Element Count    xpath://table[@name="BookTable"]/tbody/tr
	${column}=      Get Element Count    xpath://table[@name="BookTable"]/tbody/tr[1]/th

	Log To Console    ${row}
	Log To Console    ${column}

Count and get element of first column book
	Open Browser    https://testautomationpractice.blogspot.com/    chrome
	Maximize Browser Window
	Set Selenium Implicit Wait     5
	${row}=     Get Element Count    xpath://table[@name="BookTable"]/tbody/tr/td[1]
	Log To Console    ${row}
    FOR    ${i}     IN RANGE     2       ${row}+2
    ${countElementPresent}=    Get Text    xpath://table[@name="BookTable"]/tbody/tr[${i}]/td[1]
    Log To Console    ${countElementPresent}
    END

Validate a table
	Open Browser    https://testautomationpractice.blogspot.com/    chrome
	Maximize Browser Window
	Set Selenium Implicit Wait     5

	Table Column Should Contain     xpath://table[@name="BookTable"]       1   Book
	Table Row Should Contain    xpath://table[@name="BookTable"]       4   	Learn JS
	Table Cell Should Contain    xpath://table[@name="BookTable"]   5   2   Mukesh
	Table Header Should Contain    xpath://table[@name="BookTable"]     BookName