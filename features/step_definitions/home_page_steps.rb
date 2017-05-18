# features/step_definitions/home_page_steps.rb
Given(/^I am on the application home page$/) do
  visit "/"
end

Given(/^I see a picture of a cat$/) do
  expect(page).to have_css("img[src*='rufus.jpg']")
end

When(/^I click through the Full Page Image Carousel$/) do
  click_on "myCarousel"
end

Then(/^I should see a picture of another cat$/) do
  expect(page).to have_css("img[src*='miss-kitty.jpg']")
end
