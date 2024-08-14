*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://practice.automationtesting.in/my-account/
${browser}      chrome
*** Keywords ***
Open my browser
	Open Browser        ${url}        ${browser}
	Maximize Browser Window
	Set Selenium Implicit Wait    5

Scroll to login button
	Scroll Element Into View    xpath://h4[@class='widgettitle']

Close All my Browser
	Close All Browsers

Login user name
	[Arguments]    ${username}
	Input Text    xpath://input[@id='username']     ${username}
Login password
	[Arguments]    ${password}
	Input Text    xpath://input[@id='password']     ${password}
Login button
	Click Element    xpath://input[@name='login']
Verify login user
	Page Should Contain    Dashboard
Error message login
	Page Should Contain    Error:
Logout button
	Click Element    //a[normalize-space()='Logout']

