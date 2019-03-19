*** Settings ***
Library    SeleniumLibrary 
Resource    ../pageObject/AmazonPageObject.robot
Resource    ../data/AmazonTestData.robot

*** Keywords ***
User Opens the Amazon website URL and opens login page
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Click Element    ${LoginPage}

And User enters UserID and Password
    Input Text    ${UsernameField}    &{LoginData}[username]  
    Click Button    ${ContinueBtn}          
    Input Password    ${PasswordField}    &{LoginData}[password] 
    Click Button    ${SignInBtn}    
    