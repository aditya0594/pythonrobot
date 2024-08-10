*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
Tabs
	Open Browser    https://the-internet.herokuapp.com/windows  chrome
	Click Element    //*[@href='/windows/new']
	Switch Window    New Window
	Sleep    5
	Close All Browsers
windows
	Open Browser     https://the-internet.herokuapp.com/windows  chrome
	Maximize Browser Window

	Open Browser    https://www.google.com  chrome
	Maximize Browser Window

	Switch Browser  1
	${title}=   Get Title
	Log To Console    ${title}

	Switch Browser  2
	${title1}=   Get Title
	Log To Console    ${title1}