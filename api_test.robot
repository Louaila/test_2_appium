*** Settings ***
Library    AppiumLibrary
Library    XML
Library    Browser
Suite Setup    Open ApiDemos



Resource    ./resources/variables.robot
Resource    ./resources/keywords.robot


*** Test Cases ***


Test   

    # Given Open ApiDemos

    When I click in Views
    Then I an in animation
    When I click push
    Then dropdown menu is displayed
    when I click on hyperspace
    Then a text appears
  

Test2


    When I click in Views
    Then I an in chronometre
    When I click start
    then I change format
    And format change et le chronometre tourne 


test3

    When I click in Views
    then I scroll 
    When I click seek bar
    then I sent input 88

