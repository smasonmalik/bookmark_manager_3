require 'bookmarks'

describe Bookmarks do

  subject(:bookmarks) { described_class.new }

  describe '#all' do
    it 'should return a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.bbc.co.uk/sport');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.miniclip.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.cartoonnetwork.co.uk');")
  
      bookmarks = Bookmarks.all
      
      expect(bookmarks).to include 'www.bbc.co.uk/sport'
      expect(bookmarks).to include 'www.miniclip.com'
      expect(bookmarks).to include 'www.cartoonnetwork.co.uk'
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'www.test.com')

      expect(Bookmarks.all).to include 'www.test.com'
   end
  end
end
