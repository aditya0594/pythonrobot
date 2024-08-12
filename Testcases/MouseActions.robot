*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com//

*** Test Cases ***
Right Click

	Open Browser      ${url}    ${browser}
	Maximize Browser Window

	Open Context Menu    xpath://a[normalize-space()='Drag and Drop']
	Sleep    5

Double Click
	Open Browser      ${url}    ${browser}
	Maximize Browser Window
    Click Element    //a[normalize-space()='Context Menu']
	Double Click Element    xpath://h3[normalize-space()='Context Menu']
	Sleep   3
Drag and Drop
	Open Browser      ${url}    ${browser}
	Click Element    //a[normalize-space()='Drag and Drop']
	Drag And Drop    //div[@id='column-a']      //div[@id='column-b']
	Sleep    10


*** Keywords ***




