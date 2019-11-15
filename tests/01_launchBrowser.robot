*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Open Browser To Robot Framework Page
  Open Browser  https://robotframework.org/    Chrome
  Maximize Browser Window
  Element Should Contain    //h1[@class='main-header']   ROBOT FRAME WORK/
  Close Browser
