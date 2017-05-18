# features/home_page.feature
Feature: Home Page

Scenario: User Views All Cats via Home Page
  Given I am on the application home page
  And I see a picture of a cat
  When I click through the Full Page Image Carousel
  Then I should see a picture of another cat
