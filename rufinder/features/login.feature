Feature: login
  In order to read the page
  As a user
  I want to see the login page of my app

	Scenario: View login page
  		Given I am on the login page
  		Then I should see "Entre com seu e-mail USP"
	
	Scenario: Attempt login
		Given I am on the login page
		When I click "Entre com seu e-mail USP"
		Then I should see "Sign in with Google"

