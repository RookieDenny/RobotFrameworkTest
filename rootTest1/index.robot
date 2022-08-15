*** Settings ***
Library    Selenium2Library
Library    Process
Library    XML

*** Variables ***
${myname} =   戴棕鳴


*** Test Cases ***
Verify that the first title is myname
    verifymyname
    
*** Keywords ***
verifymyname
    Open Browser    https://www.google.com/    chrome
    Input Text    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input    ${myname}
    Press Keys    None    ENTER
    ${firsttitle}    Get Text    xpath://*[@id="rso"]/div[1]/div/div/div/div[1]/div/div/div[1]/div/a/h3
    should contain    ${firsttitle}    ${myname}
    Close Browser