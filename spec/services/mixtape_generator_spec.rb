require 'rails_helper'

describe Mixtape do
  describe '.generate' do
    it 'makes a correctly formatted mixtape' do
      artist = create(:artist)
      songs = create_list(:song, 3, artist: artist)

      mixtape = Mixtape.generate(artist: artist)

      expect(mixtape).to match_response_schema :mixtape
    end
  end
end
