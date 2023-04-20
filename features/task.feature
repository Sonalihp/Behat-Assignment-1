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


Scenario: to test the cart  increasing the quantity
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
Then I should see "MacBook"
Then I click "MacBook"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
Then I should see "ADD TO CART"
When I press "Add to Cart"
Then I should see "Success: You have added MacBook to your shopping cart!"
Then I should see "Shopping Cart"
Given I am at "https://tutorialsninja.com/demo/index.php?route=checkout/cart"
Then I should see "Quantity"
Then I update the Quantity with "2" for "MacBook"
Then I verified the Quantity with "2" for "MacBook"

Scenario: to test the cart decreasing the quantity
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
Then I should see "MacBook"
Then I click "MacBook"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
Then I should see "ADD TO CART"
When I press "Add to Cart"
Then I should see "Success: You have added MacBook to your shopping cart!"
Then I should see "Shopping Cart"
Given I am at "https://tutorialsninja.com/demo/index.php?route=checkout/cart"
Then I should see "Quantity"
Then I decreasing the Quantity with "1" for "MacBook"
Then I verified the Quantity with "1" for "MacBook"

    
Scenario: Verify the total price
Given I am at "http://tutorialsninja.com/demo/"
Then I should see "MacBook"
Then I click "MacBook"
Then I should see "Shopping Cart"
Then I click "Shopping Cart"
Then I should see "Total:"

Scenario: Click on Checkout button
Given I am at "http://tutorialsninja.com/demo/"
Then I should see "MacBook"
Then I click "MacBook"
Given I am at "http://tutorialsninja.com/demo/index.php?route=checkout/cart"
Then I should see "Shopping Cart"
Then I should see "Total:"
Then I click "Checkout"