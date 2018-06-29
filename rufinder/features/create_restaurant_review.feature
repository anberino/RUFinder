Feature: Create RestaurantReview
  In order to read the page
  As a viewer
  I want to see the review page of my app and create a review

  Scenario: Restaurant page
      Given I am signed in with provider google
      Given I am on the restaurants page
      Then I should see "Restaurante Test"
      When I click "Restaurante Test"
      When I click "Avaliar"
      Then I should see "Avaliação"
      When I fill the "restaurant_review" form and send it
      Then I should see "Sua avaliação"
