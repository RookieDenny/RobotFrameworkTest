*** Settings ***
Resource    settings.robot
Variables    variable.py
Test Setup    Open Browser    https://ithelp.ithome.com.tw/    chrome
Test Teardown    Close Browser
*** Keywords ***
login_button_url
    Wait Until Element Is Visible    xpath:${login_xpath}
    Element Attribute Value Should Be    xpath:${login_xpath}    href    ${login_url}
page_articles_number
    Wait Until Element Is Visible    xpath:${article_xpath}
    ${count} =    Get Element Count    class:${page_classname}
    Should Be Equal    ${count}    ${article_quantity}
search_button
    Wait Until Element Is Visible    xpath:${search_xpath}
    Click Element    xpath:${search_xpath}
    Input Text    class:${input_classname}    ${enter}
    Press Keys    None    ENTER
    ${url}=   Get Location
    Should Be Equal As Strings    ${url}    ${search_url}
articletitle_innerpagetitle
    FOR    ${i}    IN RANGE    1    ${article_quantity}+1
        Wait Until Element Is Visible    xpath:${article_xpath}
        Click Element    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i}]/div[2]/h3/a
        ${inner_page_title}    Get Text    class:${innerpage_title_class}
        Go Back
        ${title}    Get Text    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i}]/div[2]/h3/a
        Should Be Equal As Strings    ${title}  ${inner_page_title}
    END
technical_qa_url
    Wait Until Element Is Visible    xpath:${technical_qa_xpath}
    Element Attribute Value Should Be    xpath:${technical_qa_xpath}    href    ${technical_qa_url}
technical_article_url
    Wait Until Element Is Visible    xpath:${technical_article_xpath}
    Element Attribute Value Should Be    xpath:${technical_article_xpath}    href    ${technical_article_url}
itrecruit_url
    Wait Until Element Is Visible    xpath:${itrecruit_xpath}
    Element Attribute Value Should Be    xpath:${itrecruit_xpath}    href    ${itrecruit_url}
tag_url
    Wait Until Element Is Visible    xpath:${tag_xpath}
    Element Attribute Value Should Be    xpath:${tag_xpath}    href    ${tag_url}
chatroom_url
    Wait Until Element Is Visible    xpath:${chatroom_xpath}
    Element Attribute Value Should Be    xpath:${chatroom_xpath}    href    ${chatroom_url}
up_to_date_filter
    FOR    ${i}    IN RANGE    1   ${article_quantity}-1
        Wait Until Element Is Visible    xpath:${article_xpath}
        Click Element    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i}]/div[2]/h3/a
        ${x}    Get Text    xpath:${article_time_xpath}
        ${x}    Convert Date    ${x}    epoch
        Go Back
        Click Element    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i+1}]/div[2]/h3/a
        ${y}    Get Text    xpath:${article_time_xpath}
        ${y}    Convert Date    ${y}    epoch
        Go Back
        Continue For Loop If    ${x} > ${y}
    END
popular_filter
    Wait Until Element Is Visible    xpath:${article_xpath}
    Click Element    xpath:${popular_xpath}
    FOR    ${i}    IN RANGE    1    ${article_quantity}-1
         ${x}    Get Text    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i}]/div[1]/a[3]/span[1]
         ${y}    Get Text    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i+1}]/div[1]/a[3]/span[1]
         Continue For Loop If    ${x} > ${y}
    END
solve_filter
    Wait Until Element Is Visible    xpath:${article_xpath}
    Click Element    xpath:${solve_xpath}
    FOR    ${i}    IN RANGE  1    ${article_quantity}+1
        Wait Until Element Is Visible    xpath:${article_xpath}
        Click Element    xpath:/html/body/div[2]/div/div/div[1]/div[4]/div[${i}]/div[2]/h3/a
        Element Should Be Visible    xpath:${innerpage_solved_xpath}
        Go Back
    END
logo_picture_url
    Wait Until Element Is Visible    xpath:${logo_xpath}
    Element Attribute Value Should Be    xpath:${logo_xpath}    src    ${logo_url}
nextpage_button
    Wait Until Element Is Visible    xpath:${nextpage_xpath}
    Element Attribute Value Should Be    xpath:${nextpage_xpath}    href    ${nextpage_url}
previouspage_button
    Wait Until Element Is Visible    xpath:${nextpage_xpath}
    Click Element    xpath:${nextpage_xpath}
    Wait Until Element Is Visible    xpath:${previouspage_xpath}
    Element Attribute Value Should Be    xpath:${previouspage_xpath}    href    ${previouspage_url}
popular_qa_display_showquantity
    Maximize Browser Window
    Wait Until Page Contains Element    xpath:${popular_qa_xpath}
    ${count}    Get Element Count    xpath:${popular_qa_article_quantity_xpath}
    Should Be Equal    ${count}    ${5}
populararticles_showquantity
    Maximize Browser Window
    Wait Until Page Contains Element    xpath:${populararticles_xpath}
    ${count}    Get Element Count    xpath:${populararticles_quantity_xpath}
    Should Be Equal    ${count}    ${5}
iTbanghelp_facebook_url
    Maximize Browser Window
    Wait Until Page Contains Element    xpath:${facebook_xpath}
    Element Attribute Value Should Be    class:${facebook_classname}   data-href    ${facebook_url}
published_advertise_url
    Wait Until Element Is Visible    xpath:${published_advertise_xpath}
    Element Attribute Value Should Be    xpath:${published_advertise_xpath}    href    ${published_advertise_url}
authorize_serve_url
    Wait Until Element Is Visible    xpath:${authorize_serve_xpath}
    Element Attribute Value Should Be    xpath:${authorize_serve_xpath}    href    ${authorize_serve_url}