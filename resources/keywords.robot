*** Settings ***
Library   AppiumLibrary
Library    XML




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
    ${textHyperspace} =   AppiumLibrary.Get Text    xpath=//android.widget.ViewFlipper[@resource-id="io.appium.android.apis:id/flipper"]
    # Should Be Equal As Strings   ${textHyperspace}     "is nothing else but a chance to be better -albert camus"

    Log    ${textHyperspace}
