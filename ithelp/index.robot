*** Settings ***
Resource    keywords.robot
*** Test Cases ***
#檢查登入/註冊按鈕
Check login button url correct
    login_button_url
#檢查頁面文章數量正確
Check number of articles on a page correct
    page_articles_number
#檢查搜尋按鈕正常
Check search button correct
    search_button
#檢查文章標題跟內文標題一致
Check articletitle and innerpagetitle same
    articletitle_innerpagetitle
#檢查欄目網址正確-技術問答
Check technical qa url correct
    technical_qa_url
#檢查欄目網址正確-技術文章
Check technical article url correct
    technical_article_url
#檢查欄目網址正確-iT徵才
Check itrecruit url correct
    itrecruit_url
#檢查欄目網址正確-Tag
Check tag url correct
    tag_url
#檢查欄目網址正確-聊天室
Check chatroom url correct
    chatroom_url
#檢查最新篩選正確
Check up to date filter correct
    up_to_date_filter
#檢查熱門篩選正確
Check popular filter correct
    popular_filter
#檢查已解決篩選正確
Check solve filter correct
    solve_filter
#檢查logo圖片網址正確
Check logo picture url correct
    logo_picture_url
#檢查下一頁按鈕正常
Check nextpage button correct
    nextpage_button
#檢查上一頁按鈕正常
Check previouspage button correct
    previouspage_button
#檢查側欄熱門問答顯示文章數量正確
Check popular qa display showquantity correct
    popular_qa_display_showquantity
#檢查側欄熱門文章顯示文章數量正確
Check populararticles showquantity correct
    populararticles_showquantity
#檢查iT邦幫忙臉書網址正確
Check iTbanghelp facebook url correct
    iTbanghelp_facebook_url
#檢查刊登廣告網址正確
Check published advertise url correct
    published_advertise_url
#檢查授權服務網址正確
Check authorize serve url correct
    authorize_serve_url
