Feature: Puppies

  Scenario: Identify all female puppies, count and print their names
    When I open puppies website
    Then I identify all female puppies and output their count
    And I print all the female puppy names

    @release2 @fast
  Scenario: Count the # of puppies on website
    When I open puppies website
    Then I print the count of puppies