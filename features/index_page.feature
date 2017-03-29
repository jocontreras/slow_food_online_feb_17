Feature: index page with a list restaurants
  As a visitor
  in order to access the app
  I need to see an index page
  I would like to be presented with some examples of restaurants that deliver food

  Scenario: viewing list of restaurants
    Given I am on the index page
    And I should see "List Of Restaurants"
    And I should see "Thai Restaurant"
    And I should see "Italian Restaurant"
    And I should see "Chinese Restaurant"
    And I should see "Indian Restaurant"
