*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
Navigation keywords windows
	Open Browser    https://the-internet.herokuapp.com/windows  chrome
	${loc}=     Get Location
	Log To Console    ${loc}

	Go To    http://www.google.com

	${loc}=     Get Location
	Log To Console    ${loc}

	Go Back
    ${loc}=     Get Location
	Log To Console    ${loc}