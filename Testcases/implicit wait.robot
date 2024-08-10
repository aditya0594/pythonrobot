*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://practice.automationtesting.in/my-account/

*** Test Cases ***
LoginTest

	Login
	Maximize Browser Window
    Title Should Be    My Account – Automation Practice Site
    ${"download_text"}     set variable    xpath://a[normalize-space()='Downloads']
    Element Should Be Visible   ${"download_text"}
    Element Should Be Enabled    ${"download_text"}
	Click Element    xpath://a[normalize-space()='Addresses']
	Close Browser

Implicit wait statements
	Open Browser    https://demo.automationtesting.in/Register.html     chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10  #keep wait for the 10 sec before throughing the exceptions

    Scroll Element Into View    id:firstpassword
    Select From List By Label   id:Skills   Android1
    Select From List By Value    id:Skills  Certifications
    Select From List By Index    id:Skills  3
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

*** Keywords ***
Login
	Open Browser      ${url}    ${browser}
	##Click Link    xpath://input[@id='reg_email']
	${email}    Set Variable    //input[@id='username']
	Element Should Be Visible    ${email}
	Input Text    ${email}     adityapawar180@gmail.com
	Input Text    xpath://input[@id='password']     Aditya@123
	Click Element    xpath://input[@name='login']


