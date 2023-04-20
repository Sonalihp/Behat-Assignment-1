@javascript
Feature: search feature

Background: Login as user
    Given I am on the homepage
    And I click "My Account"
    And I click "Login"
    And I fill in "input-email" with "Sonal16@gmail.com"
    And I fill in "password" with "Test@16"
    And I press "Login"

Scenario: to test the search functionality
    When I fill in "search" with "iphone"
    And I press the ".fa-search"
    Then I should see "iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name o.."