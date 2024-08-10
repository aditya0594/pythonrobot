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

Radio_Checkbox_Buttons
	Open Browser    https://demo.automationtesting.in/Register.html     chrome
	Maximize Browser Window
	Select Radio Button    radiooptions     Male
	Select Checkbox     id:checkbox1
	Sleep    5

Handling ropdown_ListBox_Scroll
	Open Browser    https://demo.automationtesting.in/Register.html     chrome
    Maximize Browser Window
    #Select From List By Value
    Scroll Element Into View    id:firstpassword
    Select From List By Label   id:Skills   Android
    Sleep    3
    Select From List By Value    id:Skills  Certifications
    Sleep    3
    Select From List By Index    id:Skills  3

Wait statements
	Open Browser    https://demo.automationtesting.in/Register.html     chrome
    Maximize Browser Window
    Set Selenium Timeout    10  #it will wait for 10 for the only for the element
    Wait Until Element Is Visible   xpath://h2[normalize-space()='Register']   # default timeout is 5 seconds

    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    2   #it will applicable for every steps of the script
    #Select From List By Value
    Scroll Element Into View    id:firstpassword
    Select From List By Label   id:Skills   Android
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


