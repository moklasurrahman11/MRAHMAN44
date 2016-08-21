Feature: Pass table as parameter

  Scenario: Pass table as parameter
    Given I open practiceselenium website
    Then I fill the page with values:
      | firstname | lastname | xyz |
      | pradeep   | kumar    | abc |
      | sheikh    | raman    | bcd |


