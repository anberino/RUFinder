Feature: Friends
  In order to read the page
  As a viewer
  I want to see the friends page of my app

  Scenario: View friends page
      Given I am signed in with provider google
      When I click "Amigos"
      Then I should see "Adicionar amigo"
