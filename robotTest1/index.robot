*** Settings ***
Library    Selenium2Library
Suite Setup    Open Browser    https://www.google.com/    chrome
Suite Teardown    Close Browser
*** Variables ***
${myname} =   戴棕鳴


*** Test Cases ***
Verify_first_title_has_myname
    verify_myname
    
*** Keywords ***
verify_myname
    Wait Until Element Is Visible    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Input Text    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    ${myname}
    Press Keys    None    ENTER
    Wait Until Element Is Visible    xpath://*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[1]/div/a/h3
    ${firsttitle}    Get Text    xpath://*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[1]/div/a/h3
    should contain    ${firsttitle}    ${myname}
    