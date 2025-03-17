*** Settings ***
Library    AppiumLibrary
Library    XML
Library    Browser



Resource    ./resources/variables.robot
Resource    ./resources/keywords.robot


*** Test Cases ***


Test   

    Given Open ApiDemos



    When I click in Views
    Then the page is displayed
    # When I click on animation
    # Then the page is displayed on push
    # When I click on push
    # Then a dropdown menu is displayed
    # When I select Push up
    # Then a text appears
