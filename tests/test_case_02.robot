*** Settings ***

Resource    ../settings.robot
Resource    ../resource/Keywords/factorial_home_keywords.robot
Resource    ../resource/Keywords/BDD_keywords.robot
Resource    ../resource/Pages/factorial_home_page.robot

*** Test Cases ***

Scenario 02: Calculate a float number factorial
    Given I access the website to calculate a factorial
    When I input a float number
    Then I verify a error message
