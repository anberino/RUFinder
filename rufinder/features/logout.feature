Feature: logout
  In order to leave the website
  As a user
  I want to see the logout button on the menu
  and i want to be able to leave the site

	Scenario: Logout
  		Given I am signed in with provider google
      When I click "Sair"
  		Then I should see "Entre com seu e-mail USP"
