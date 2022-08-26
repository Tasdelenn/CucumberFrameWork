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

    When User delete the "<CitizenshipName>"
    Then Success message should be displayed

    Examples:
      | CitizenshipName | ShortName |
      | arnavut         | arn       |
      | gürcü           | gur       |
      | macar           | mcr       |
      | boşnak          | bsn       |
      | slav            | rus       |
    #Tükçe karakterle ne olacağını merak ettim... (sıkıntı yok)
    #TODO arama sonucunda tek öğe çıkacağını varsaymış gibiyiz burda...
    #TODO eğer aramamız iki,üç... vs sırada çıkarsa silemiyoruz !!!