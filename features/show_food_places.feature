Feature: Show food places randomly
  In order to view randomly the places to eat at
  As an employee of TUS
  I want to see the food places at random
  And I want to be able to randomly repick the food place to eat at

  Scenario: Showing a food place
    Given I am on the homepage
    And there is a food place:
      | place         | disgust_text                          | 
      | Guan          | Wert? And get fuckin' food poisoning?"|
    And I should see "We are going to fucking Guan for lunch today!"
    And I should see "Wert? And get fuckin' food poisoning?"
    And I should see "I want to fucking eat something else!"

  Scenario: Picking another food place randomly
    Given I am on the homepage
    And there is a food place:    
      | place         | disgust_text                          | 
      | Liang Court   | Ain't that fuckin' far??              |
    When I follow "I want to fucking eat something else!"
    And I should see "We are going to fucking Liang Court for lunch today!"
    And I should see "Ain't that fuckin' far??"
    And I should see "I want to fucking eat something else!"