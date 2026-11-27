*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL}        https://www.google.com//
${Browser}    Chrome
*** Test Cases ***
Verfy Login Functionality
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    sleep        10s
    Input Text    id=ti6dpd    Laptop
    sleep        30s
    Click Button    id=ti6dpd
    #press Key    id=nav-search-submit-button    ENTER
    
    


   
