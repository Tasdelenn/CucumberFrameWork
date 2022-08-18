Feature:  Country Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Navigate to country page


  Scenario: Create a Country
    When Create a country
    Then Success message should be displayed

  Scenario: Create a Country parameter data
    When Create a country name as "Hakanya" code as "11111"
    Then Success message should be displayed

