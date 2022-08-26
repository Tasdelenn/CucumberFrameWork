#  1 sınav girişi yapıp
#  sonrasında silmesini yapınız
Feature: Entrance Exam Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario: Create and Delete a Exam
    And Click on the element in the left Nav
      | entranceExamsOne |
      | setupTwo         |
      | entranceExamsTwo |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput | Vize Sınavı |

    And Click on the element in the Form Content
      | academicPeriod  |
      | academicPeriod1 |
      | gradeLevel      |
      | gradeLevel2     |

    #TODO: Akademik period ve GradeLevel tıklanma problemi

    And Click on the element in the Dialog
      | saveButton |

    Then Success message should be displayed

    And Click on the element in the left Nav
      | entranceExamsOne |
      | setupTwo         |
      | entranceExamsTwo |

    #TODO Küçük ekran veya düşük çözünürlükte leftNavdaki linkler bazan yukarıda kalıyo, görünmüyo
    #TODO mouse la scroll yapıca, başka müdahale olmadan devam ediyo

    And User delete item from Dialog
      | Vize Sınavı |

    Then Success message should be displayed

