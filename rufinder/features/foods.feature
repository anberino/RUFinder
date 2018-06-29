Feature: Foods
  In order to read the page
  As a viewer
  I want to see the foods page of my app

  Scenario: View food review page
      Given I am signed in with provider google
      Given I have some foods registered
      Given I am on an food page
      When I click "Avaliar"
      Then I should see "Avaliação"
      When I fill the "review" form and send it
      Then I should see "Sua avaliação"

  @javascript
  Scenario: View and do search
      Given I am signed in with provider google
      Given I am on the foods page
      Given I have some foods registered
      When I fill in some search options
      Then I should see "Arroz"
      Then I should see "Feijão"
