
feature 'Visiting bookmarks' do
  scenario 'Has correct bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'www.bbc.co.uk/sport'
    expect(page).to have_content 'www.miniclip.com'
    expect(page).to have_content 'www.cartoonnetwork.co.uk'
  end
end
