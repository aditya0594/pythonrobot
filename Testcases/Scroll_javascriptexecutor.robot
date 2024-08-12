*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://the-internet.herokuapp.com//

*** Test Cases ***
Scroll by pixel
	Open Browser    ${url}  ${browser}
	Maximize Browser Window
	Sleep    5
	Execute Javascript      window.scrollTo(0,1500)         #Scroll to the pixel number
	Sleep    5
	Close Browser

Scroll by View
	Open Browser    ${url}  ${browser}
	Maximize Browser Window
	Sleep    5
	Scroll Element Into View    //a[normalize-space()='WYSIWYG Editor']        #Scroll to the view
	Sleep    5
	Close Browser

Scroll by bottom of page
	Open Browser    ${url}  ${browser}
	Maximize Browser Window
	Sleep    5
	Execute Javascript      window.scrollTo(0,document.body.scrollHieght)    #Scroll to the bottom of page
	Sleep    5
	Execute Javascript      window.scrollTo(0,-document.body.scrollHieght)
	Sleep    5
	Close Browser
