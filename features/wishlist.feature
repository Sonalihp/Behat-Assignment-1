@javascript
Feature: wishlist
As an end user
I want to add a product into wishlist
so that I see product add into wishlist
Background: Login as user
 Given I am on the homepage
 And I click "My Account"
 And I click "Login"
 And I fill in "input-email" with "sonal16@gmail.com"
 And I fill in "password" with "Test@16"
 And I press "Login"
Scenario: to test the wishlist functionality
 Given I am on "http://tutorialsninja.com/demo/"
 Then I should see "Tablets"
 Then I click "Tablets"
 Then I should see "Samsung Galaxy Tab 10.1"
 Then I press button "Add to Wish List"
 Then I should see the text "Success: You have added"