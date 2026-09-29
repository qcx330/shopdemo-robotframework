*** Settings ***
Library    Browser
Resource    ../pom/pages/test-setup.resource
Resource    ../pom/pages/home-page.resource
Test Setup    Open Page And Log In  
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
Add a single product to cart - Verify quantity & cart page
    Add product to cart    "Áo thun nam"
    
