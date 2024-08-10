
@home @all
Feature: Home Feature

  Background: 
    Given The user is on home page

  @befordropdown
  Scenario Outline: User is on the home page and clicks on any of the dropdown without sign in
    When The user click on data structure dropdown button
    And the user select any dropdown menu "<options>"
    Then user should get the error message "You are not logged in"

    Examples: 
      | options     |
      | Arrays      |
      | Linked List |
      | Stack       |
      | Queue       |
      | Tree        |
      | Graph       |

  @beforgetstart
  Scenario Outline: User is on the home page and clicks on any getStarted link without sign in
    When the user click any of the getStarted link before sign in "<modules>" in home page
    Then user should get the error message "You are not logged in"

    Examples: 
      | modules                      |
      | Data Structures-Introduction |
      | Array                        |
      | Linked List                  |
      | Stack                        |
      | Queue                        |
      | Tree                         |
      | Graph                        |

  @homesignin
  Scenario: Home page sign in link validation
    When The user clicks on sign in button
    Then The user should naviagtes to login page

  @aftersignin
  Scenario: Home page register link validation
    When The user clicks on register button
    Then The user should navigates to register page

  @afterdropdown
  Scenario Outline: User is on the home page and clicks on any of the dropdown with sign in
    When The user goes to sign in page
    And The user enters valid username and password
    And The user clicks on login button
    Then The user should be redirected to Home Page with the message "You are logged in"
    When The user click on data structure dropdown button
    And The user select the modules on data structure dropdown with sign in as "<options>" in home page
    Then user should navigate into "<options>" page

    Examples: 
      | options     |
      | Arrays      |
      | Linked List |
      | Stack       |
      | Queue       |
      | Tree        |
      | Graph       |

  @aftergetstart
  Scenario Outline: User is on the home page and clicks on any getStarted link with sign in
    When The user goes to sign in page
    And The user enters valid username and password
    And The user clicks on login button
    Then The user should be redirected to Home Page with the message "You are logged in"
    When The user clicks any of the getStarted link with sign in "<modules>" module in home page
    Then user should navigate into respective "<modules>" page

    Examples: 
      | modules                      |
      | Data Structures-Introduction |
      | Array                        |
      | Linked List                  |
      | Stack                        |
      | Queue                        |
      | Tree                         |
      | Graph                        |
