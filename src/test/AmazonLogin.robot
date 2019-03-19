*** Settings ***
Library    SeleniumLibrary   
Resource    ../libraries/AmazonLoginlibs.robot 

*** Test Cases ***
FirstDemoTest
    Log    FirstMessage 
    
AmazonLoginTest
    # Create Webdriver    Chrome    executable path="location of webdriver"   
    # else you can add chromedriver to scripts and add that path in environmental variable 
    User Opens the Amazon website URL and opens login page  
    And User enters UserID and Password
    Close Browser  
    Log    This test was executed on %{os}    