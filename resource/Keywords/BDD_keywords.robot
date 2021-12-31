*** Settings ***

Resource        ../resource/Keywords/factorial_home_keywords.robot

*** Keywords ***

Given I access the website to calculate a factorial
    Open Browser
    Acess application website

When I input a integer number
    Input a integer number

When I input a float number
    Input a float number

When I input a string
    Input a string

When I click on Calculate without input a value
    Click calculate without any number

When I input a integer number bigger than 170
    Input a big number

When I input a negative number
    Input a negative number
    
Then I verify the right result
    Result verification
    Close Browser 

Then I verify a error message
    Invalid value alert
    Close Browser

Then I verify a result
    Big numbers result verification
    Close Browser 