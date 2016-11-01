feature 'Cats' do
  before :each do
    Cat.make(name: 'Rufus', gender: 'M', species: 'tabby', attitude: 'quirky')
  end

  scenario 'creates a new cat object in the database' do
    visit '/cats/new'
    click_on([navbar], "img[src*='create.png']")
    attach_file('Image', 'spec/files/images/rufus.jpg')
    fill_in 'Name', with: 'Rufus'
    fill_in 'Gender', with: 'M'
    fill_in 'Species', with: 'tabby'
    fill_in 'Attitude', with: 'quirky'
    click_button 'Purrfect'
    expect(page).to have_content('Success')
    expect(page).to have_css("img[src*='rufus.jpg']")
  end
end
