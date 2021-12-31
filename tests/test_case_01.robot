*** Settings ***

Resource    ../settings.robot
Resource    ../resource/Keywords/factorial_home_keywords.robot
Resource    ../resource/Keywords/BDD_keywords.robot
Resource    ../resource/Pages/factorial_home_page.robot

*** Test Cases ***

Scenario 01: Calculate a integer number factorial
    Given I access the website to calculate a factorial
    When I input a integer number
    Then I verify the right result