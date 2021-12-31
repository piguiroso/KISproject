*** Keywords ***

Test Setup
    Open Browser    about:blank     ${BROWSER}

Test Teardown
    Close Browser

Acess application website
    Go To                       ${URL}
    Title Should Be             Factoriall
    Wait Until Page Contains    ${HOME_TEXT}

Input a integer number 
    Click Element               ${NUMBER_INPUT}
    Input Text                  ${NUMBER_INPUT}         5
    Click Element               ${CALCULATE_BUTTON}

Input a float number
    Click Element               ${NUMBER_INPUT}
    Input Text                  ${NUMBER_INPUT}         2.5
    Click Element               ${CALCULATE_BUTTON}

Click calculate without any number
    Click Element               ${NUMBER_INPUT}
    Click Element               ${CALCULATE_BUTTON}

Input a string 
    Click Element               ${NUMBER_INPUT}
    Input Text                  ${NUMBER_INPUT}         j
    Click Element               ${CALCULATE_BUTTON}

Input a big number 
    Click Element               ${NUMBER_INPUT}
    Input Text                  ${NUMBER_INPUT}         300
    Click Element               ${CALCULATE_BUTTON}

Input a negative number 
    Click Element               ${NUMBER_INPUT}
    Input Text                  ${NUMBER_INPUT}         -10
    Click Element               ${CALCULATE_BUTTON}

Result verification
    Element Should Contain      ${RESULT_MESSAGE}       The factorial of 5 is: 120
    Capture Page Screenshot     result_screenshot.png

Big numbers result verification
    Element Should Contain      ${RESULT_MESSAGE}       The factorial of 300 is: Infinity
    Capture Page Screenshot     result_screenshot.png

Invalid value alert
    Element Should Contain      ${RESULT_MESSAGE}       Please enter an integer
    Capture Page Screenshot     alert_screenshot.png
