Feature: Delete dishes from restaurant
  As a restaurant owner
  In order to manage my menu
  I would like to be able to delete dishes on my menu

Background:
 Given the following restaurants exist
  | name        |
  | NisseKebbab |
  | AmberBurger |
 And the following menus exist
  | name            | restaurant  |
  | Nisses Takeaway | NisseKebbab |
  | Tasty burgers   | AmberBurger |
Given the following dishes exist
  | name       | price | menu            |
  | Kebabrulle | 180   | Nisses Takeaway |
  | Burger     | 190   | Tasty burgers   |

Scenario: I successfully delete the dish
  Given I am on the "Kebabrulle" delete dish page for "NisseKebbab" restaurant
  Then I should see "dish_name" with "Kebabrulle"
  And I should see "dish_price" with "180"
  And I should see "dish_description" with "Xtra All"
  And I should see "Starter" from "Category"
  Then I click "Delete dish"
  Then I should see "Are you sure you want to delete this dish?"
  Then I should see "Kebabrulle details successfully deleted"
  And the dish name in the system should now be " "

Scenario: Unsuccesfull edit of the dish
  Given I am on the "Kebabrulle" delete dish page for "NisseKebbab" restaurant
  Then I should see "dish_name" with "Kebabrulle"
  And I should see "dish_price" with "180"
  And I should see "dish_description" with "Xtra All"
  And I should see "Starter" from "Category"
  Then I click "Delete dish"
  Then I should see "Are you sure you want to delete this dish?"
  Then I should see "Kebabrulle details successfully deleted"
  And the dish name should still be "Kebabrulle" in the system
