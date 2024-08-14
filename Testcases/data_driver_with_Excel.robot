*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Login_resourse.robot

Suite Setup    Open My Browser
Suite Teardown    Close All my Browser
Test Template    invalid login scenario

*** Test Cases ***  username    password
user with empty password    aditya@yopmail.com  ${EMPTY}
user with wrong password     aditya@yopmail.com     xyz
invalid user with valid password    aadi@yopmail.com    Aditya@123
invalid user with empty password    adi@yopmail.com     ${EMPTY}
invalid user with Invalid password  aadi@yopmail.com    Adia@123


*** Keywords ***
invalid login scenario
	[Arguments]    ${username}  ${password}
	Scroll to login button
	Login user name     ${username}
	Login password      ${password}
	Login Button
	Error message login

