require 'pg'

feature 'Viewing bookmarks' do
  scenario 'User looks at bookmarks' do
    Bookmarks.create(url: 'www.bbc.co.uk/sport')
    Bookmarks.create(url: 'www.miniclip.com')
    Bookmarks.create(url: 'www.cartoonnetwork.co.uk')

    visit '/bookmarks'
    
    expect(page).to have_content 'www.bbc.co.uk/sport'
    expect(page).to have_content 'www.miniclip.com'
    expect(page).to have_content 'www.cartoonnetwork.co.uk'
  end
end
