Feature: Review
  In order to read the page
  As a viewer
  I want to see the review page of my app

  Scenario: View review page
      Given I am signed in with provider google
      Then I should see "Review de bandejões feitas por você"
