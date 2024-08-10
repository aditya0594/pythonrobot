*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://practice.automationtesting.in/my-account/

*** Test Cases ***
ScreenShot element

	Open Browser      ${url}    ${browser}
	Maximize Browser Window
	##Click Link    xpath://input[@id='reg_email']
	${email}    Set Variable    //input[@id='username']
	Element Should Be Visible    ${email}
	Capture Element Screenshot    xpath://h2[normalize-space()='Login']         Testcases/ScreenShort/loginlogo.png
	Capture Page Screenshot    Testcases/ScreenShort/pagescreenshot.png
	Input Text    ${email}     adityapawar180@gmail.com
	Input Text    xpath://input[@id='password']     Aditya@123
	Click Element    xpath://input[@name='login']
    Title Should Be    My Account – Automation Practice Site
    ${"download_text"}     set variable    xpath://a[normalize-space()='Downloads']
    Element Should Be Visible   ${"download_text"}
    Element Should Be Enabled    ${"download_text"}
	Click Element    xpath://a[normalize-space()='Addresses']
	Close Browser

*** Keywords ***
Login



