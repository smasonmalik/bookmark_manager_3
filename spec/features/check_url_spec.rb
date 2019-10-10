feature "checks url link" do
  scenario "throws error message if invalid url submitted" do
    visit ('/bookmarks/new')
    fill_in('url', with: 'fake web address')

    click_button('Submit')

    expect(page).not_to have_content "fake web address"
    expect(page).to have_content "Invalid URL"
  end
end
