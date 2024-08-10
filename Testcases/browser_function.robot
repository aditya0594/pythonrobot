*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Close All browser
	Open Browser    https://demo.automationtesting.in/Register.html     chrome
	Maximize Browser Window
	Open Browser    https://www.google.com  chrome
	Maximize Browser Window

	Close All Browsers




