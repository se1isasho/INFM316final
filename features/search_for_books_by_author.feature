Feature: search for books by author
  
  As a book buff
  So that I can find books with my favorite author
  I want to include and search on author information in books I enter

  Background: books in database
 
  Given the following books exist:
  | TITLE                           | GENRE           | AUTHOR           | PUBLISH_DATE |
  | Хамлет                          | DRAMA           | Уилям Шекспир    |   1609-04-13 |
  | Дневникът на Мишо               | ANIME           |                  |   2016-12-12 |
  | Artists : Their Lives and Works | ART             | Graham Dixon     |   2017-10-11 |
  | Сън в лятна нощ                 | LOVE            | Уилям Шекспир    |   2017-03-08 |
 
Scenario: add author to existing book
  When I go to the edit page for "Дневникът на Мишо"
  And  I fill in "Author" with "Антон Бухалов "
  And  I press "Update Book Info"
  Then the author of "Дневникът на Мишо" shout be "Антон Бухалов"
 
Scenario: find book with same author
  Given I am on the details page for "Хамлет"
  When  I follow "Find Books With Same Author"
  Then  I should be on the Similar Books page for "Хамлет"
  And   I should see "Сън в лятна нощ"
  But   I should not see "Дневникът на Мишо"
 
Scenario: can't find similar books if we don't know author (sad path)
  Given I am on the details page for "Дневникът на Мишо"
  Then  I should not see "Антон Бухалов"
  When  I follow "Find Books With Same Author"
  Then  I should be on the home page
  And   I should see "'Дневникът на Мишо ' has no author info"