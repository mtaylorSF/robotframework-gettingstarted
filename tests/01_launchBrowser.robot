*** Settings ***
Library           SeleniumLibrary

Documentation     A test suite with a single test.
...
...               This test uses a single test case and
...               the SeleniumLibrary Library

*** Test Cases ***
Open Browser To Robot Framework Page
  Open Browser  https://robotframework.org/    Chrome
  Maximize Browser Window
  Element Should Contain    //h1[@class='main-header']   ROBOTFRAMEWORK/
  Close Browser
