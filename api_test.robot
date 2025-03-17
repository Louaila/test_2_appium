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
    Then I an in animation
    When I click push
    Then dropdown menu is displayed
    when I click on hyperspace
    Then a text appears
  
