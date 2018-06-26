Feature: Menu
  In order to look at the menu
  As a user
  I want to see the menu in my app

	Scenario: View menu
    Given I am signed in with provider google
		Given I am on the menu page
		Then I should see "Almoço"
