*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Handling alert
	Open Browser    https://demo.automationtesting.in/Alerts.html   chrome
	Click Element    xpath://a[normalize-space()='Alert with OK & Cancel']
	Click Element    xpath://button[@class='btn btn-primary']
	Sleep    3
	#Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    leave  # it keeps open the alert
    #Alert Should Be Present    Press a Button !
    Alert Should Not Be Present    Press a Button !

Frames
	Open Browser    https://demo.automationtesting.in/Frames.html   chrome
    Select Frame  id:singleframe  #id name xpath
    Sleep    5
    ${text}=    Get Text    //div[@class='container']
    Log To Console    ${text}
