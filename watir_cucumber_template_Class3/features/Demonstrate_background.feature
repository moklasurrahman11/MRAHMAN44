Feature: Demonstrate background

  Background:
    Given I open seleniumframework website

    @release2
  Scenario: Verify title of about page
    When I navigate to about page
    Then I verify the title "Selenium Framework | ABOUT"

  Scenario: Verify title of tutorials page
    When I navigate to tutorials page
    Then I verify the title "Selenium Framework | Selenium, Cucumber, Ruby, Java et al."