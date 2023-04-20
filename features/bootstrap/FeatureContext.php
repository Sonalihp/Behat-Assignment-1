<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\RawMinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawMinkContext implements Context
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

      /**
     * @When I press buttonIcon
     */
    public function iPressButtonicon()
    {
        $this->getSession()->getPage()->find('css','[class="btn btn-default btn-lg"]')->click();
    }

    /**
     * @Given I click on wishlist
     */
    public function iClickOnWishlist()
    {
        $this->getSession()->getPage()->find('css','[data-original-title="Add to Wish List"]')->click();
    }

     /**
     * @When I press the :arg1
     */
    public function iPressThe($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click();
    }

    /**
     * @Then I should see the text "\/\/*[@id=:arg1]\/div[:arg2]"
     */
    public function iShouldSeeTheTextIdDiv($arg1, $arg2)
    {
        $this->getSession()->getPage()->find('css',[$arg1, $arg2])->click();
    }

     /**
     * @Given I click on update
     */
    public function iClickOnUpdate()
    {
        $this->getSession()->getPage()->find('css','[data-original-title="Update"]')->click();
    }
    
    /**
     * @Given I have :arg1 items in my cart
     */
    public function iHaveItemsInMyCart($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click(); 
    }

    /**
     * @When I increase the quantity of the first item by :arg1
     */
    public function iIncreaseTheQuantityOfTheFirstItemBy($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click(); 
    }

    /**
     * @Then I should see :arg1 items in my cart
     */
    public function iShouldSeeItemsInMyCart($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click(); 
    }
    
    /**
     * @When I should see the :arg1
     */
    public function iShouldSeeThe($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click();
    }

    /**
     * @Then I update the :arg1
     */
    public function iUpdateThe($arg1)
    {
        $this->getSession()->getPage()->find('css',$arg1)->click();
    }
    
    /**
     * @Given I am on the Product Listing Page
     */
    public function iAmOnTheProductListingPage()
    {
        $this->getSession()->getPage()->find('css','[data-original-title="Update"]')->click(); 
    }


    /**
     * @Then I update the Quantity with :arg1 for :arg2
     */
    public function iUpdateTheQuantityWithFor($arg1, $arg2)
    {
        $temp=$this->getSession()->getPage()->find('xpath','//a[text()="'.$arg2.'"]/parent::td/following-sibling::td[@class="text-left"]/div/input');
        $temp->setValue($arg1); 
    }


    /**
     * @Then I verified the Quantity with :arg1 for :arg2
     */
    public function iVerifiedTheQuantityWithFor($arg1, $arg2)
    {
        $temp=$this->getSession()->getPage()->find('xpath','//a[text()="'.$arg2.'"]/parent::td/following-sibling::td[@class="text-left"]/div/input');
        $quantity=$temp->getText();
    }

    

     /**
     * @When I wait “:arg1” seconds
     */
    public function iWaitSeconds2($arg1)
    {
        sleep($arg1);
    }

    /**
     * @Then I press button :arg1
     */
    public function iPressButton($arg1)
    {
        $this->getSession()->getPage()->find('xpath','//button[@data-original-title="Add to Wish List"]')->click(); 
    }

    /**
     * @Then I decreasing the Quantity with :arg1 for :arg2
     */
    public function iDecreasingTheQuantityWithFor($arg1, $arg2)
    {
        $this->getSession()->getPage()->find('xpath','//button[@data-original-title="Remove"]')->click(); 
    }
    
    
}
