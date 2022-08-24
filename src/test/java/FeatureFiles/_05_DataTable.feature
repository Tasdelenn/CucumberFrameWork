Feature: Datatable Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario: Create Country
    And Click on the element in the left Nav
      | setupOne   |
      | parameters |
      | countries  |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput | hakanya |
      | codeInput | 121233  |

    And Click on the element in the Dialog
      | saveButton |

    And Success message should be displayed

    And User delete item from Dialog
      | hakanya |

    And Success message should be displayed

  Scenario: Create a Nationality
    And Click on the element in the left Nav
      | setupOne      |
      | parameters    |
      | nationalities |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput | hakanmil |

    And Click on the element in the Dialog
      | saveButton |

    And Success message should be displayed

    And User delete item from Dialog
      | hakanmil |

    And Success message should be displayed

  Scenario: Create a Fee, delete Fee

    And Click on the element in the left Nav
      | setupOne   |
      | parameters |
      | fees       |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput       | cash01 |
      | codeInput       | 9001   |
      | integrationCode | 1009   |
      | priorityCode    | 43     |

    And Click on the element in the Dialog
      | saveButton |

    And Success message should be displayed

    And User delete item from Dialog
      | cash01 |

    And Success message should be displayed




    #    Senaryo Outline da verilen değerler için tüm senaryo her satır kadar tekrar çalıştırılıyordu.
    #    DataTable da ise, sadece ilgili step için toplu veri gönderme imkanı oluşuyor.
    #    TODO: Nurhayat String.class, Kaymakçı tablo yuklenmesini

