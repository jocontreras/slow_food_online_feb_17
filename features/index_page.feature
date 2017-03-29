Feature: index page with a list restaurants
  As a visitor
  in order to access the app
  I need to see an index page
  I would like to be presented with some examples of restaurants that deliver food

 Background:
 Given the following restaurant exists
   | name        | street      | zip_code | city     | food_style                |
   | Denmark     | Kyra Green  | 0        | Pagacside| Iran, Islamic Republic of |

  Scenario: viewing list of restaurants
    Given I am on the index page
    And I should see "List Of Restaurants"
    And I should see "Denmark"
