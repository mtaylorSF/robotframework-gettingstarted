*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}              https://robotframework.org/
${BROWSER}          Chrome
${MAIN_HEADER}      //h1[@class='main-header']
${TWEET_WIDGET}     //*[@id="twitter-widget-0"]

*** Keywords ***
Open Browser To Robot Framework Page
  Open Browser  ${URL}    ${BROWSER}
  Maximize Browser Window
