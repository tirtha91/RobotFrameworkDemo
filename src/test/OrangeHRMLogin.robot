*** Settings ***
Library    SeleniumLibrary
Resource    ../libraries/OrangeHRMLibs.robot
Test Setup    Open OrangeHRM
Test Teardown    Close Browser    
Default Tags    Sanity
# Run from CMD particular test-> robot -t TestName1 -t TestName2 TestSuite
# Run from CMD all test -> robot TestsuiteName.robot
# Set Tags from CMD -> robot -t TestName --settag=regression TestSuite
# Specify test on basis of tags -> robot --include tagname TestSuite
# Specify test on basis of multiple tags -> robot -i tagName1 -i tagName2 TestSuite
# Excluding tags while running TestSuite -> robot -e tagName TestSuite
# Regex use -> robot -i s* TestSuite (it will include all test starting with s tagname)
*** Test Cases ***
OrangeHRMLoginTest
    [Documentation]    This is to test the login feature  
    OrangeHRM website login      
#   This step is to verify environmental varibales
    Log    This test was executed on %{os}
    
*** Test Cases ***
OrangeHRMVerifyLogin
    [Documentation]    This is to verify the logged in User and then logout
    [Tags]    Smoke
    OrangeHRM website login 
    OrangeHRM website login verification
    
*** Test Cases ***
SmokeTestCase
    [Tags]    Smoke
    Log To Console    This is a smoke test case    