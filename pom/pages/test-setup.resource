*** Settings ***
Library    Browser
Resource    ../pages/login-page.resource

*** Variables ***

*** Keywords ***
Open Page And Log In
    New Page    BASE_URL
    Enter username and password    USERNAME    PASSWORD
    Click on login button