require 'pg'

feature 'Update and exisiting bookmark' do
  scenario 'User changes the url or title of bookmark' do
    bookmark = Bookmarks.create(url: 'https://www.miniclip.com', title: 'Miniclip')

    visit ('/bookmarks')
    expect(page).to have_link('Miniclip', href: 'https://www.miniclip.com')

    first('.bookmark').click_button('Update')
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"

    fill_in('url', with: 'https://www.miniclip.com')
    fill_in('title', with: 'youtube')
    click_button('Submit')

    expect(current_path).to eq "/bookmarks"
    expect(page).not_to have_link('Miniclip', href: 'https://www.miniclip.com')
    expect(page).to have_link('youtube', href: 'https://www.miniclip.com')
  end
end
