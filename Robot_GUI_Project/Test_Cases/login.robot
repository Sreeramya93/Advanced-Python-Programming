*** Settings ***
Library        SeleniumLibrary
*** Variables ***
${URL}        https://www.amazon.in/
${Browser}    Chrome
*** Test Cases ***
Verfy Login Functionality
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    sleep        10s
    #Input Text    id=ti6dpd    Laptop
    Input Text    id=twotabsearchtextbox    Laptop
    sleep        10s
    Click Element    id=nav-search-submit-button
    #press Key    id=nav-search-submit-button    ENTER
    
    


   
