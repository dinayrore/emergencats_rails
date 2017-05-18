# spec/views/home_page_spec.rb
require 'rails_helper'

describe 'root' do
  context 'when a non-user visits the home page' do
    it 'displays pictures of cats' do
      # Setup scenario for behavior
      assign(:cat, Cat.create(name: 'Rufus', gender: 'M', species: 'tabby', attitude: 'quirky', image: 'rufus.jpg'))
      assign(:cat, Cat.create(name: 'Chow', gender: 'M', species: 'tabby', attitude: 'charming', image: 'chow.jpg'))
      assign(:cat, Cat.create(name: 'Miss Kitty', gender: 'F', species: 'tabby', attitude: 'spicy', image: 'miss-kitty.jpg'))

      # Cause behavior to occur
      render

      # Assert result is as expected
      expect(page).to have_css("img[src*='rufus.jpg']")
      expect(page).to have_css("img[src*='chow.jpg']")
      expect(page).to have_css("img[src*='miss-kitty.jpg']")
    end
  end
end
