require_relative '../lib/beer_song.rb'

RSpec.describe '../lib/beer_song' do
  describe '#verse' do
    it 'returns string for 99 digit' do
      string = "99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.\n"
      expect(BeerSong.new.verse(99)).to eq string
    end

    it 'returns string for 3 digit' do
      string = "3 bottles of beer on the wall, 3 bottles of beer.
Take one down and pass it around, 2 bottles of beer on the wall.\n"
      expect(BeerSong.new.verse(3)).to eq string
    end
  end

  describe '#verses' do
    it 'return correct string for 99,98' do
      string = "99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall.\n"
      expect(BeerSong.new.verses(99, 98)).to eq string
    end
  end
end
