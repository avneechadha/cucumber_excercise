Feature: Web page verification 
    Created steps feature to test the following:
    1) Verified that all field values are correct 
    2) Verified that all field values are greater than zero
    3) Verified that all field values are formatted as currencies
    4) Calculated and verified the outcome of total balance field based upon the sum of given values

    Background: 
    Given I am on excercise1 page in google chrome browser

    Scenario: Testing the expected values are present in the page 
    Given I am on excercise1 page 
    
    And I expect the value of "value 1" field is non empty in excercise page
    And I expect the value of "value 2" field is non empty in excercise page
    And I expect the value of "value 3" field is non empty in excercise page
    And I expect the value of "value 4" field is non empty in excercise page
    And I expect the value of "value 5" field is non empty in excercise page
    And I expect the value of "total balance" field is non empty in excercise page

    And I expect the value of "value 1" field is "$122,365.24" in excercise page
    And I expect the value of "value 2" field is "$599.00" in excercise page
    And I expect the value of "value 3" field is "$850,139.99" in excercise page
    And I expect the value of "value 4" field is "$23,329.50" in excercise page
    And I expect the value of "value 5" field is "$566.27" in excercise page

    And I expect the value of "value 1" field is greater than "0" in excercise page
    And I expect the value of "value 2" field is greater than "0" in excercise page
    And I expect the value of "value 3" field is greater than "0" in excercise page
    And I expect the value of "value 4" field is greater than "0" in excercise page
    And I expect the value of "value 5" field is greater than "0" in excercise page
    
    And I expect the "value 1" field is formatted as currency in excercise page
    And I expect the "value 2" field is formatted as currency in excercise page
    And I expect the "value 3" field is formatted as currency in excercise page
    And I expect the "value 4" field is formatted as currency in excercise page
    And I expect the "value 5" field is formatted as currency in excercise page
    
    And I expect the value of "total balance" field is "$1,000,000.00" in excercise page
    
    And I expect the value of "total balance" field is equal to sum of values in excercise page


