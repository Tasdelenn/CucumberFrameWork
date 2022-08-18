Feature:  Citizenship with scenario Outline

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly
    And Navigate to Citizenship page

  Scenario Outline: Citizenship create
    When User a Citizenship name as "<CitizenshipName>" short name as "<ShortName>"
    Then Success message should be displayed

    When User a Citizenship name as "<CitizenshipName>" short name as "<ShortName>"
    Then Already exist message should be displayed
    And Click on close button

    Examples:
      | CitizenshipName | ShortName |
      | vatan01         | das01     |
      | vatan02         | das02     |
      | vatan03         | das03     |
      | vatan04         | das04     |
      | vatan05         | das05     |


