Feature: Login functionality

Scenario: Login as user
Given I am on the homepage
And I click "My Account"
And I click "Login"
And I fill in "input-email" with "Sonal16@gmail.com"
And I fill in "password" with "Test@16"
And I press "Login"