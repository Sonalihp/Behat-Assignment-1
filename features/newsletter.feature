@javascript
Feature: Newsletter
As an end user
I want to add a product into cart
So that I see product add into shopping cart
Background: Login as user
    Given I am on the homepage
    And I click "My Account"
    And I click "Login"
    And I fill in "input-email" with "Sonal16@gmail.com"
    And I fill in "password" with "Test@16"
    And I press "Login"
Scenario:To test the address book functionality
    Given I am on "http://tutorialsninja.com/demo"
    And I click "Newsletter"
    And I should see "Newsletter Subscription"
    When I click "No"
    And I press "Continue"
    Then I should see the text "Success: Your newsletter subscription has been successfully updated!"

