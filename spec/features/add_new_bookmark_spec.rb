require 'pg'

feature 'Add new bookmark' do
  scenario 'User adds a new bookmark to database' do
    visit ('/bookmarks/new')
    fill_in('url', with: 'www.reddit.com')
    click_button('Submit')
    expect(page).to have_content 'www.reddit.com'
  end
end