*** Settings ***

Resource    ../settings.robot
Resource    ../resource/Keywords/factorial_home_keywords.robot
Resource    ../resource/Keywords/BDD_keywords.robot
Resource    ../resource/Pages/factorial_home_page.robot

*** Test Cases ***

Scenario 05: Calculate big numbers factorial
    Given I access the website to calculate a factorial
    When I input a integer number bigger than 170
    Then I verify a result