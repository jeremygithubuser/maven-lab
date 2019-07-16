Feature: Advertising
  In order to increase the compagny benefits
  As a webmaster
  I want the readers being able to receive advertising corresponding to their profiles

  Background:
    Given David is one of our readers

  Scenario: David gets advertising corresponding to his profile
    Given David is interested in the following topics:
      |Hockey|
      |Tennis|
      |Cars|
    When he receives the daily news
    Then ads should include content about:
      |Hockey|
      |Tennis|
      |Cars|

  Scenario: David gets advertising corresponding to length of each article
    When he is reading in the following articles:
      |Title  |Paragraphs |
      |Title1 |1          |
      |Title2 |10         |
    Then he should receive the following number of ads:
      |       |ads  |
      |Title1 |1    |
      |Title2 |2    |

