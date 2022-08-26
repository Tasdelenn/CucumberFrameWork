Feature:  Country Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario: Create Country
    And Navigate to country page
    When Create a country
    Then Success message should be displayed

  Scenario: Delete Country
    And Navigate to country page
    When Create a country
    Then Already exist message should be displayed
    And Click on close button
    And Delete a country
    And Success message should be displayed

