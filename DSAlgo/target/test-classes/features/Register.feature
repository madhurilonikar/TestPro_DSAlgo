@register @all
Feature: Register feature

  Background: 
    Given The user clicks on Get started button and navigates to home page
    When The user navigates to register page by clicking register button on the home page

  @rgvalid_input
  Scenario Outline: Register with valid username and password
    When The user enters the valid username into the username textfield
    And The user enters the valid password "<password>" into the password textfield
    And The user enters the password "<conpassword>" into the confirm password textfield
    Then The registration should be successful and user should able to navigate into the home page and The user should able to see the alert message " New Account Created"

    Examples: 
      | password  | conpassword |
      | Ninja@123 | Ninja@123   |

  @rg1invalid_input
  Scenario Outline: Register with valid username and invalid password
    When The user enters the valid username as "<username1>" into the username textfield
    And The user enters the invalid password "<password1>" into the password textfield
    And The user reenters the password "<confirmpassword1>" into the confirm password textfield
    Then The registration should be unsucessful and user should get a error message "password_mismatch:The two password fields didnot match"

    Examples: 
      | username1 | password1  | confirmpassword1 |
      | ninjafox  | project123 | nin@123          |

  @rg2invalid_input
  Scenario Outline: Register with valid username,valid password and invalid confirm password
    When The user enters the valid username "<username2>" into the username textboxfield
    And The user enters the valid password "<password2>" into the password textboxfield
    And The user enters the invalid password "<confirmpassword2>" into the confirm password textfield
    Then The registration should be unsucessful with the error message "password_mismatch:The two password fields didnot match"

    Examples: 
      | username2 | password2   | confirmpassword2 |
      | Ninja0000 | Password@12 | pass@45          |
      | Ninja1111 | passwprd@14 | pass@78          |

  @rg3invalid_input
  Scenario Outline: Register without entering usename, password and confirm password
    When The user does not enters the username "<username3>" into the username textfield
    And The user does not enters the  password "<password3>"into the password textfield
    And The user does not enters the same password "<confirmpass3>" into the confirm password textfield
    Then Registration should be unsucessful and he should get a alert message"please fill out this page"

    Examples: 
      | username3 | password3 | confirmpass3 |
      |           |           |              |

  @rglogin
  Scenario: Register page login feature validation
    When The user clicks on the Login button
    Then The User should able to succesfully navigate into the login page

  @rgsign
  Scenario: Register page Signin feature validation
    When The user clicks on the Sign in button
    Then The User should able to succesfully navigate into the Sign in page