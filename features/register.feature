#Feature: Registration functionality

#Scenario: New register should be to register to the site
#Given I am on Homepage
#When I visit "https://tutorialsninja.com/demo/index.php?route=account/register"
#And I fill the following:
#|First Name		|admin  		          |
#|Last Name 		|Demo  		              |
#|E-Mail  	        |Sonal16@gmail.com        |
#|Telephone	        |9876543211	              |
#|Password	        |Test@16	              |
#|Password Confirm  |Test@16		          |
#And I check the box "agree"
#And I press the "Continue" button
#Then I should be on "http://tutorialsninja.com/demo/index.php?route=account/success"

Feature: Register Account
Scenario:To test the registration functionality
Given I am at "http://tutorialsninja.com/demo/index.php?route=account/register"
When I fill in "input-firstname" with "Sonali"
When I fill in "input-lastname" with "Demo"
When I fill in "input-email" with "Sonal16@gmail.com"
When I fill in "input-telephone" with "9876543211"
When I fill in "input-password" with "Test@16"
When I fill in "input-confirm" with "Test@16"
And I check the box "agree"
And I press the "Continue" button
Then I should be on "http://tutorialsninja.com/demo/index.php?route=account/success"