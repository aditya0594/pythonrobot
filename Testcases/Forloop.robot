*** Test Cases ***
For loop 1
	FOR   ${i}    IN RANGE    1   10
    Log To Console    ${i}
    END

For loop 2
	FOR     ${i}    IN    1  2  3  4  5  6  7  8  #double space give you the value in one by one
		                                          #and single space give you the value in single line
	Log To Console    ${i}
	END

For Loop 3 with list
	@{items}    Create List    1    2   3   4   5   6
	FOR    ${i}     IN    @{items}
	Log To Console    ${i}
	END

For loop 4 for string
    FOR    ${i}     IN    aditya    smith   john
    Log To Console    ${i}
    END
For Loop 5 for string list using variable
	@{stringList}   Create List    aditya    smith   john
	FOR    ${i}     IN  @{stringList}
	Log To Console    ${i}
	END

For loop 6 with condition
	@{value}=   Create List     1   2   3   4
	FOR    ${i}     IN    @{value}
	Exit For Loop If    ${i}==2
	Log To Console    ${i}
	END