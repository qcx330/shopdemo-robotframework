*** Settings ***
Library    Browser
Resource    ../resources/login.resource
Test Setup    New Page   
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
Login fails when username and password are both blank
    Leave username and password blank
    Click on login button
    Verify that alert message is displayed