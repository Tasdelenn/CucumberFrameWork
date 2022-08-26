#  Daha önceki Create a Fee, delete Fee Senaryosunu
#  Aşağıdaki 5 farklı değerler için çalıştırınız.

Feature: Fee Functionality

  Background:
    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

  Scenario Outline: Create a Fee, delete Fee

    And Click on the element in the left Nav
      | setupOne   |
      | parameters |
      | fees       |

    And Click on the element in the Dialog
      | addButton |

    And User sending the keys in Dialog content
      | nameInput       | <name>     |
      | codeInput       | <code>     |
      | integrationCode | <intCode>  |
      | priorityCode    | <priority> |

    And Click on the element in the Dialog
      | saveButton |

    And Success message should be displayed

    And User delete item from Dialog
      | <name> |

    And Success message should be displayed

    Examples:
      | name   | code   | intCode    | priority |
      | Fee011 | 201091 | paypal     | 756543   |
      | Fee022 | 201080 | applePay   | 766434   |
      | Fee033 | 202371 | googlePay  | 756435   |
      | Fee044 | 202361 | aliPay     | 756543   |
      | Fee055 | 202351 | bestbuyPay | 756576   |