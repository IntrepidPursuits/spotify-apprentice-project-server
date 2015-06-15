require 'rails_helper'

describe Mixtape do
  describe '.generate' do
    it 'makes a correctly formatted mixtape' do
      artists = create_list(:artist,3)
      song1 = create_list(:song, 4)

      mixtape = Mixtape.generate(2, artists: artists)
      expect(mixtape).to be
    end

    it 'makes an empty mixtape' do
      artist = create(:artist)

      mixtape = Mixtape.generate(0,artists: artist)
      expect(mixtape1).to be_empty
    end

    it 'makes a mixtape without an artist' do
      songs = create_list(:song, 6)

      mixtape = Mixtape.generate(artists:nil)
      expect(mixtape1).to be
    end
  end
end
