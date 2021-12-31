*** Settings ***

Resource    ../settings.robot
Resource    ../resource/Keywords/factorial_home_keywords.robot
Resource    ../resource/Keywords/BDD_keywords.robot
Resource    ../resource/Pages/factorial_home_page.robot

*** Test Cases ***

Scenario 03: Calculate a string factorial
    Given I access the website to calculate a factorial
    When I input a string
    Then I verify a error message