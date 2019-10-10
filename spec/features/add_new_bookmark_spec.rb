require 'pg'

feature 'Add new bookmark' do
  scenario 'User adds a new bookmark to database' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'https://www.bbc.co.uk/news')
    fill_in('title', with: 'BBC Sport')
    click_button('Submit')
    expect(page).to have_link('BBC Sport', href: 'https://www.bbc.co.uk/news')
  end
end
