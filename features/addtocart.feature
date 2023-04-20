@javascript
Feature: add to cart
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

Scenario: to test the cart functionality
 Given I am on "http://tutorialsninja.com/demo/"
 Then I should see "MacBook"
 Then I click "MacBook"
 Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
 Then I should see "ADD TO CART"
 When I press "Add to Cart"
 And I wait for AJAX to finish
 Then I should see "Success: You have added MacBook to your shopping cart!" 
 
Scenario: to test the cart  increasing/decreasing the quantity
 Given I am on "http://tutorialsninja.com/demo/"
 Then I should see "MacBook"
 Then I click "MacBook"
 Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
 Then I should see "ADD TO CART"
 When I press "Add to Cart"
 Then I should see "Success: You have added MacBook to your shopping cart!"
 Then I should see "ADD TO CART"
 Then I should see "Qty"
 When I fill in "input-quantity" with "2"
 When I press "Add to Cart"

 Scenario: to test the cart  increasing/decreasing the quantity
 Given I am on "http://tutorialsninja.com/demo/"
 Then I should see "MacBook"
 Then I click "MacBook"
 Given I am at "http://tutorialsninja.com/demo/index.php?route=product/product&product_id=43"
 Then I should see "ADD TO CART"
 When I press "Add to Cart"
 Then I should see "Success: You have added MacBook to your shopping cart!"
 Then I should see "ADD TO CART"
 Then I should see "Qty"

Scenario: Verify the total price
 Given I am at "http://tutorialsninja.com/demo/"
 Then I should see "MacBook"
 Then I click "MacBook"
 Given I am at "http://tutorialsninja.com/demo/index.php?route=checkout/cart"
 Then I should see "Shopping Cart"
 Then I should see "Total:"

Scenario: Click on Checkout button
 Given I am at "http://tutorialsninja.com/demo/"
 Then I should see "MacBook"
 Then I click "MacBook"
 Given I am at "http://tutorialsninja.com/demo/index.php?route=checkout/cart"
 Then I should see "Shopping Cart"
 Then I should see "Total:"
 Then I click "Checkout"