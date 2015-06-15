require 'rails_helper'

describe MixtapeMaker do
  describe '.generate' do
    it 'makes a correctly formatted mixtape' do
      artists = create_list(:artist,3)
      songs = create_list(:song, 4, artist: artists[0])
      mixtape = MixtapeMaker.generate(2, artists: artists)
      expect(mixtape).to be
    end

    it 'makes an empty mixtape' do
      artist = create(:artist)

      mixtape = MixtapeMaker.generate(0,artists: artist)
      expect(mixtape).to be_empty
    end

    it 'makes a mixtape without an artist' do
      songs = create_list(:song, 6)

      mixtape = MixtapeMaker.generate(artists:nil)
      expect(mixtape).to be
    end
  end
end
