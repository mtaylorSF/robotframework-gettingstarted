*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
TEST: Check Main-Header
  Open Browser To Robot Framework Page
  Element Should Contain        //h1[@class='main-header']    ROBOT FRAME WORK/
  Close Browser

TEST: Check Tweets
  Open Browser To Robot Framework Page
  Page Should Contain Element    //*[@id="twitter-widget-0"]
  Close Browser

*** Keywords ***
Open Browser To Robot Framework Page
  Open Browser  https://robotframework.org/    Chrome
  Maximize Browser Window
