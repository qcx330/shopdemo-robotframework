*** Settings ***
Library    Browser
Library    String
Resource    ../locators/login-locator.resource
Resource    ../../core/element/element.robot
*** Variables ***

*** Keywords ***
Leave username and password blank
    Clear Text    ${usernameTxt}
    Clear Text    ${passwordTxt}

Enter username and password
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Fill Text    ${usernameTxt}    ${USERNAME}
    Fill Text    ${passwordTxt}    ${PASSWORD}

Click on login button
    Click    ${loginBtn}

Verify that alert message is displayed
    ${actualMsg}=    Get Text    ${errorMsg}
    Should Contain    ${actualMsg}    Vui lòng nhập đầy đủ tài khoản và mật khẩu.