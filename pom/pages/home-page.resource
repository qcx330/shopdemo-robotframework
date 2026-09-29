*** Settings ***
Library    Browser
Library    String
# Resource    ../locators/home-locator.resource

*** Variables ***

*** Keywords ***
Add product to cart
    [Arguments]    ${product_name}
    ${product_locator}    Set Variable    //div[contains(text(), "${product_name}")]
    ${addToCartBtn_locator}    Set Variable    ${product_locator}//following-sibling::button
    Click    ${addToCartBtn_locator}