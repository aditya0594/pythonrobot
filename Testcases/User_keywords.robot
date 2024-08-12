*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resourse.robot

*** Test Cases ***
User defined keywords
	${pageTitle}=   LaunchBrowers1   https://www.google.com  chrome
    Log To Console    ${pageTitle}
    Log    ${pageTitle}
	Close All Browsers



