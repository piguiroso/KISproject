*** Settings ***

Resource    ../settings.robot
Resource    ../resource/Keywords/factorial_home_keywords.robot
Resource    ../resource/Keywords/BDD_keywords.robot
Resource    ../resource/Pages/factorial_home_page.robot

*** Test Cases ***

Scenario 04: Calculate without input any number
    Given I access the website to calculate a factorial
    When I click on Calculate without input a value
    Then I verify a error message