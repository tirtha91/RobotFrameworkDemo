*** Settings ***
Library    SeleniumLibrary 
Resource    ../data/OrangeHRMTestData.robot
Resource    ../pageObject/OrangeHRMPageObject.robot
    

*** Keywords ***
Open OrangeHRM
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5    

OrangeHRM website login
    Input Text    ${OrangeHRMUserName}    &{LoginData}[username]          
    Input Password    ${OrangeHRMPasswordField}    &{LoginData}[password] 
    Click Button    ${OrangeHRMSignInBtn}

OrangeHRM website login verification
    ${LoginUser}    Get Text    ${OrangeHRMLoggedUSer}
    Log             ${LoginUser}    
    Click Element    ${OrangeHRMLoggedUser}  
    Click Element    ${OrangeHRMLogout}      
       