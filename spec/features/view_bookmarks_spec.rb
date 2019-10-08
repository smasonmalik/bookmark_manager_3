require 'pg'

feature 'Viewing bookmarks' do
  scenario 'User looks at bookmarks' do
    Bookmarks.create(url: 'www.bbc.co.uk/sport', title: 'BBC Sport')
    Bookmarks.create(url: 'www.miniclip.com', title: 'Miniclip')
    Bookmarks.create(url: 'www.cartoonnetwork.co.uk', title: 'CN')

    visit '/bookmarks'

    expect(page).to have_link('BBC Sport', href: 'www.bbc.co.uk/sport')
    expect(page).to have_link('Miniclip', href: 'www.miniclip.com')
    expect(page).to have_link('CN', href: 'www.cartoonnetwork.co.uk')
  end
end
