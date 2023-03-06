Feature: Bookcategory
  Bcackground: I should be able to see homepage
  Given     I enter URL"https://demo.nopcommerce.com/" in browser
  And       I am on home page


  Senario outline: I should be able to see top menu tabs on homepage with categories

  When I am on home page
  Then I should be able to see top menu tabs with "<categories>"
  Examples:
  |Categories                  |
  |Computer                    |
  |Electronic                  |
  | Apparel                    |
  | Books                      |
  | Jewellery                  |
  | Gift card                  |

   Scenario Outline:  I should be able to see book page with fillters

    When     I select book category from top menu tabs on home apge
    Then     I Select navigated to the book category
    And      I should be able to see  "<filters>"

     Examples:
     | Filters      |
     | Short by     |
     | Display      |
     | The Grid     |
     | List Tab     |

   Scenario Outline: I should be able to see list of terms of each filter
     Given           I am on book page
     When            I click on  "<filter>"
     Then            I should be able to see "<list>" in dropdown menu
     Examples:
     | Filter      | list
     | Sort by     |Name : A to Z ,name Z to A ,Price : Low to High, Price :High to Low,Created on  |
     | Display     | 3, 6 , 9                                                                       ||
   Scenario Outline: I should be able to choose any filter option with specific resutl
     Given           I am on book page
     When            I click on "<filter>"
     And             I click on any "<option>"
     Then            I should be able to choose any filter option from the list
     And             I should be able to see  "<result>"

     Examples:

     | Filter         | option              |  result
     | Sort by        | Name :A to Z        | Sorted product with the product name in alphabetical order A to Z |
     | Sort by        | Name :Z to A        | Sorted product with the product name in alphabetical order Z to A |
     | Sort by        | Price: Low to High  | Sorted product with the price in descending order                 |
     | Sort by        | Price: High to Low  | Sorted product with the price in ascending order                  |
     | Display        | Created  on         | Recently in a page                                                |
     | Display        |  3                  | 3 product in a page                                               |
     | Display        |  6                  | 6 product in a page                                               |
     | Display        |  9                  | 9 product in a page                                               |

   Scenario Outline: I Should be able to see prodcut display format according display format as per given pictuer in srs

         Given       I am on book page
         When        I click on "<display format icon>"
         Then        I should be able to see prodcut format according display format type as per given picture in srs document
   Examples:
     | display format icon       |
     | Grid                      |
     | List                      |