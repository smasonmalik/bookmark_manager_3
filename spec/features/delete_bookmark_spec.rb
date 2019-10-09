require 'pg'

feature 'Remove an existing bookmark' do
  scenario 'User removes a bookmark' do
    create_urls

    visit ('/bookmarks')
    fill_in('title', with: 'Miniclip')
    click_button('Delete')
    expect(page).to_not have_link('Miniclip', href: 'www.miniclip.com')
  end
end
