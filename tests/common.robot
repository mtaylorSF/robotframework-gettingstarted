*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}              https://robotframework.org/
${BROWSER}          Chrome
${MAIN_HEADER}      //h1[@class='main-header']
${TWEET_WIDGET}     //*[@id="twitter-widget-0"]

*** Keywords ***
Open Browser To Robot Framework Page
  ${args} =     Create List    --disable-gpu    --headless   --no-sandbox    --disable-dev-shm-usage  --dns-prefetch-disable
  ${options} =     Create Dictionary    args=${args}
  ${desiredcaps} =     Create Dictionary    chromeOptions=${options}

  Open Browser  url=${URL}
  ...           browser=${BROWSER}
  ...           desired_capabilities=${desiredcaps}
  Maximize Browser Window
