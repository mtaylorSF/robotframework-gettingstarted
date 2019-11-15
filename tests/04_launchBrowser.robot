*** Settings ***
Library           SeleniumLibrary
Resource          common.robot

Test Setup        Open Browser To Robot Framework Page
Test Teardown     Close Browser

*** Test Cases ***
TEST: Check Main-Header
  Element Should Contain         ${MAIN_HEADER}   ROBOT FRAME WORK/

TEST: Check Tweets are there
  Page Should Contain Element    ${TWEET_WIDGET}
