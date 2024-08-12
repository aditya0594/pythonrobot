*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowers
	[Arguments]    ${appUrl}    ${appbrowser}  # user defincd keywork with  arguments
	Open Browser    ${appUrl}     ${appbrowser}
	Maximize Browser Window

LaunchBrowers1                   # user defincd keywork with  arguments and return value
	[Arguments]    ${appUrl}    ${appbrowser}
	Open Browser    ${appUrl}     ${appbrowser}
	Maximize Browser Window
	${title}=   Get Title
	RETURN    ${ title}
