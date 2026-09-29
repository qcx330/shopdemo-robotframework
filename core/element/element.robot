*** Settings ***
Library    Browser
Library    String

*** Keywords ***
Element Should Be Contained In The Page [Arguments] ${locator}
    ${element}=    Get Element    ${locator}    
    Should Not Be Empty    ${element}

Element Should Not Be Contained In The Page [Arguments] ${locator}
    ${element}=    Get Element    ${locator}    
    Should Be Empty    ${element}

Element Should Be Visible [Arguments] ${locator}
    Wait For Elements State    ${locator}    visible

Element Should Not Be Visible [Arguments] ${locator}
    Wait For Elements State    ${locator}    hidden

Element Text Should Be [Arguments] ${locator} ${expected_text}
    ${element}=    Get Element    ${locator}
    ${text}=    Get Text    ${element}
    Should Be Equal    ${text}    ${expected_text}

Element Should Contain Text [Arguments] ${locator} ${expected_text}
    ${element}=    Get Element    ${locator}
    ${text}=    Get Text    ${element}
    Should Contain    ${text}    ${expected_text}

Click Element [Arguments] ${locator}
    Click    ${locator}

Input Text [Arguments] ${locator} ${text}
    Fill Text    ${locator}    ${text}

Scroll [Arguments] ${locator}
    Scroll To Element   ${locator}

Clear Text [Arguments] ${locator}
    Clear Text    ${locator}