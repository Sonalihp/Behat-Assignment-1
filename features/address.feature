@javascript
Feature: add
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
Scenario:user should be able to update the address.
Given I am on "http://tutorialsninja.com/demo"
And I click "Wish List"
And I click "Address Book"
And I click "New Address"
When I fill in "input-firstname" with "Sonal"
When I fill in "input-lastname" with "Demo"
When I fill in "input-company" with "XYZ"
When I fill in "input-address-1" with "882 Virginia Isle Apt.520"
When I fill in "input-address-2" with "MG.road pune"
When I fill in "input-city" with "pune"
When I fill in "input-postcode" with "232415"
When select "India" from "input-country"
And I wait “5” seconds
When select "Maharashtra" from "input-zone"
And I press the "Continue" button
Then I should see the text "Your address has been successfully added"

