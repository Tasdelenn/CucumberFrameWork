Feature: Country Multi Scenario

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Navigate to country page

  Scenario: Create and delete a country
    When Create a country
    Then Success message should be displayed
    And Delete a country
    And Success message should be displayed

  Scenario: Create a country parameter data
    When Create a country name as "yeniHakanYa" code as "17700"
    Then Success message should be displayed

  Scenario: Delete a country with parameters data
    When Delete a country name as "yeniHakanYa" code as "17700"
    Then Success message should be displayed