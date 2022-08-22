#Senaryo ;
#1- siteyi açınız.
#2- username ve password u gönderin ve Login butonuna tıklatın.
#3- Login olduğunuzu doğrulayın.

  #- Sonra Yukarıdaki Senaryoyu Gherkin dilinde yazdık.

Feature: Login Functionality

  Scenario: Login with valid username and password

    Given Navigate to basqar
    When Enter username and password and click login button
    Then User should login successfuly

    Scenario: Create Country
      And Click on the element in the left Nav
        | setupOne   |
        | parameters |
        | countries  |

      And Click ın the element in the Dialog
      | addButton |
