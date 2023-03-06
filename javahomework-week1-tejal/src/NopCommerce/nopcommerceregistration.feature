Feature: Nopcommerce Registration
  As a User
   I wnt to check the Register functionality of Nopcommerce
  Background: I am on Nopcommerce Registration page
    Given     I open the Google Chrome Browser
    When      I open URL https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce Registration page

  Scenario Outline: I should not able to register with invalid data on mandatory field (*) of registration field
    When            I enter first name "<First Name>"
    And             I enter last name "<Last Name>"
    And             I enter Email Address "<Email>"
    And             I enter password "<Password>"
    And             I enter Confirm Password "<Confirm Password>"
    And             Click on Register button
    Then            I can see an error message "<error message>"

    Examples:
    |First Name   | Last Name    |Email                |Password    |Confirm Password  |error message                               |
    | " "         |bakshi        |bakshi@gmail.com     |456897      |456897            |please enter First Name                     |
    |Rohan        |  "  "        |bakshi@gmail.com     |456897      |456897            |please enter Last Name                      |
    |Rohan        |bakshi        |  " "                |456897      |456897            |please enter valid Email                    |
    |Rohan        |bakshi        |bakshi@gmail.com     |  " "       |456897            |password is required                        |
    |Rohan        |bakshi        |bakshi@gmail.com     |456987      |  " "             |confirm password is required                |
    |Rohan        |bakshi        |bakshi@gmail.com     |456897      |45689             |password and confirm password do not match  |
    |Rohan        |bakshi        |bakshi@gmail.com     |45689       | " "              |minimum 6 character password is required    |
    | " "         | " "          | " "                 | " "        | " "              |Mandatory  (*) filed is required            |

    Scenario: I should ba able to select any one radio button from Label of your personal Detail
      Given   I am on Gender label of your personal detail section
      When    I select  "Male" radio button
      And     I select  "Female" radio button
      Then    I am able to select any one of the radio button
    Scenario Outline: I should able to select Day, Month and Year from drop down list of date of birth field
      Given   I am on Date of Birth field of Your Personal Detail section
      When    I select day "<Day>"
      And     I select month "<Month>"
      And     I select Year "<Year>"
      Then    I am able to select Day, Month and yesr from drop down list

      Examples:
        |Day   | Month            |Year |
        |11    |November          |1989 |
      Scenario: I should able to check and uncheck the Newsletter box on Option section
        Given   I am on Newsletter label on option section
        When    I click on Newsletter Checkbox
        And     I again click on Newsletter Checkbox
        Then    I was able to check and uncheck the box next to Newsletter lable
      Scenario: I should able to register with valid mandatory (*) field data on registration page
        Given   I enter First Name "Rohan"
        And     I enter Last Name  "bakshi"
        And     I enter Email "bakshi@gmail.com"
        And     I enter Password "456897"
        And     I enter Confirm Password "456897"
        And     I click on Register button
        Then    I was able to register successfully

