*** Settings ***
Library   AppiumLibrary
Library    XML




Resource   ../resources/variables.robot

	

*** Keywords ***


Open ApiDemos
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}


I click in Views
    Click Element    xpath=//android.widget.TextView[@content-desc="Views"]

the page is displayed 
    
    Click Element  xpath=//android.widget.TextView[@content-desc="Animation"]
  

I click on animation 

      Click Element  xpath=//android.widget.TextView[@content-desc="Animation"]