@javascript
Feature: cart
Background: Login as user
Given I am on the homepage
And I click "My Account"
And I click "Login"
And I fill in "input-email" with "Sonal16@gmail.com"
And I fill in "password" with "Test@16"
And I press "Login"
When I click "Phones & PDAs"
Then I should see "iPhone"
Then I click "iPhone"
When I press "Add to Cart"
Then I should see the text " Success: You have added "
Then I should see "Shopping Cart"

Scenario: to test the cart increasing the quantity
When I click "Shopping Cart" 
Then I should see "Quantity"
Then I update the Quantity with "2" for "iPhone"
Then I verified the Quantity with "2" for "iPhone"
And I click "My Account"
And I click "Logout"

Scenario: to test the cart decreasing the quantity
When I click "Shopping Cart" 
Then I should see "Quantity"
Then I decreasing the Quantity with "1" for "iPhone"
Then I verified the Quantity with "1" for "iPhone"
And I click "My Account"
And I click "Logout"

Scenario: to verify cart product details and total cost
When I click "Shopping Cart" 
Then I should see "Total:"
And I click "My Account"
And I click "Logout"

Scenario:  Click on Checkout button
When I click "Shopping Cart"
When I click "Checkout"
Then I should see "Step 2: Billing Details "
#When I select the radio button "I want to use an existing address"
Then I press "button-payment-address"
And I wait “2” seconds
Then I should see "Step 3: Delivery Details "
Then I press "button-shipping-address"
And I wait “2” seconds
Then I should see "Step 4: Delivery Method "
Then I press "button-shipping-method"
And I wait “2” seconds
Then I should see "Step 5: Payment Method "
Then I check the box "agree"
#Then I click "agree"
Then I press "button-payment-method"
Then I should see "Step 6: Confirm Order "
Then I press "button-confirm"
Then I click "Order History"




