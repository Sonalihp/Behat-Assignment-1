@javascript
Feature: Sort
Scenario: to test the Sorting functionality
Given I am at "http://tutorialsninja.com/demo/"
Then I should see "Phones & PDAs"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/category&path=24"
Then I should see "Sort by:"
Then I select "Name (A - Z)" from "input-sort"
Then I select "25" from "input-limit"
And I press "list-view"
Then I select "Price (High > Low)" from "input-sort"

Scenario: to test the Sorting functionality
Given I am on "http://tutorialsninja.com/demo/"
Then I should see "Tablets"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/category&path=57"
Then I should see "sort by:"
Then I select "Name (Z - A)" from "input-sort"
Then I select "25" from "input-limit"
And I press "list-view"
Then I select "Price (Low > High)" from "input-sort"

Scenario: to test the Sorting functionality
Given I am on "http://tutorialsninja.com/demo/"
Then I should see "Tablets"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/category&path=57"
Then I should see "sort by:"
Then I select "Model (A - Z)" from "input-sort"
Then I select "25" from "input-limit"
And I press "list-view"
Then I select "Rating (Highest)" from "input-sort"
Scenario: to test the Sorting functionality
Given I am on "http://tutorialsninja.com/demo/"
Then I should see "Tablets"
Given I am at "http://tutorialsninja.com/demo/index.php?route=product/category&path=57"
Then I should see "sort by:"
Then I select "Model (Z - A)" from "input-sort"
Then I select "25" from "input-limit"
And I press "list-view"
Then I select "Rating (Lowest)" from "input-sort"