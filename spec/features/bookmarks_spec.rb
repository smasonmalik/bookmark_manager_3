require 'pg'

feature 'Viewing bookmarks' do
  scenario 'User looks at bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'www.bbc.co.uk/sport');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'www.miniclip.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'www.cartoonnetwork.co.uk');")

    visit '/bookmarks'
    
    expect(page).to have_content 'www.bbc.co.uk/sport'
    expect(page).to have_content 'www.miniclip.com'
    expect(page).to have_content 'www.cartoonnetwork.co.uk'
  end
end
