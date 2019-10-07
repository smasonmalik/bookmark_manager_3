require 'bookmarks'

describe Bookmarks do

  subject(:bookmarks) { described_class.new }

  describe '#all' do
    it 'should return a list of bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include('www.bbc.co.uk/sport', 'www.miniclip.com', 'www.cheetos.com')
    end
  end
end
