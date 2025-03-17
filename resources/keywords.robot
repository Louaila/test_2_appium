*** Settings ***
Library   AppiumLibrary
Library    XML
Library    String
Library    Browser
Library    Process




Resource   ../resources/variables.robot

	

*** Keywords ***



Open ApiDemos
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}


I click in Views
    Click Element    xpath=//android.widget.TextView[@content-desc="Views"]

I an in animation
    Click Element  xpath=//android.widget.TextView[@content-desc="Animation"]

I click push
    Click Element  xpath=//android.widget.TextView[@content-desc="Push"]

dropdown menu is displayed
    Click Element  xpath=//android.widget.Spinner[@resource-id="io.appium.android.apis:id/spinner"]

I click on hyperspace
    Click Element   xpath=//android.widget.CheckedTextView[@resource-id="android:id/text1" and @text="Hyperspace"]

 a text appears
         ${textHyperspace}   AppiumLibrary.Get Text    xpath=//android.widget.ViewFlipper[@resource-id="io.appium.android.apis:id/flipper"]

        Should Be String   ${textHyperspace}   "freedom is nothing else but a chance to be better - Albert Camus"






I an in chronometre
    Click Element  xpath=//android.widget.TextView[@content-desc="Chronometer"]
    
I click start
    
    Click Element  xpath=//android.widget.Button[@content-desc="Start"]


I change format
      Click Element  xpath=//android.widget.Button[@content-desc="Set format string"]


format change et le chronometre tourne


    ${chrono1}=    AppiumLibrary.Get Text    //android.widget.Chronometer[@resource-id="io.appium.android.apis:id/chronometer"]
    Log To Console    Le timer doit être ${chrono1}
    Sleep    2s
    ${chrono2}=    AppiumLibrary.Get Text    //android.widget.Chronometer[@resource-id="io.appium.android.apis:id/chronometer"]
    Log To Console    Le timer doit être ${chrono2}

    Should Not Be Equal As Strings    ${chrono1}    ${chrono2}
    Log To Console    Le chronomètre tourne toujours

   


I scroll 

    Swipe    start_x=370    start_y=2500    offset_x=168  offset_y=300

    Sleep    3s

I click seek bar
    Click Element    xpath=//android.widget.TextView[@content-desc="Seek Bar"]

I sent input 88
    Input Text    xpath=//android.widget.SeekBar[@resource-id="io.appium.android.apis:id/seek"]    88