Feature: Login feature

  @librarian
  Scenario: Login as a librarian
    Given I am on the login page
    Then verify that the title is "Login - Library"
    When I login as a librarian
    Then dashboard should be displayed



  @Negative
  Scenario: Negative Login as a librarian
    Given I am on the login page
    When I login with invalid credentials librarian
    Then verify the error message "Sorry, Wrong Email or Password"
