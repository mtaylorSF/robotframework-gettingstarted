*** Settings ***
Library           SeleniumLibrary

Test Setup        Open Browser To Robot Framework Page
Test Teardown     Close Browser

*** Variables ***
${URL}              https://robotframework.org/
${BROWSER}          Chrome

*** Test Cases ***
TEST: Check Main-Header
  Element Should Contain         //h1[@class='main-header']   ROBOT FRAME WORK/

TEST: Check Tweets are there
  Page Should Contain Element    //*[@id="twitter-widget-0"]

*** Keywords ***
Open Browser To Robot Framework Page
  Open Browser  ${URL}    ${BROWSER}
  Maximize Browser Window
