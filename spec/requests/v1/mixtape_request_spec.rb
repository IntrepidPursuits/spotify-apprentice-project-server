require 'rails_helper'

describe 'mixtape endpoints' do
  describe 'POST #create' do
    it 'returns JSON for a single mixtape' do
      artist = create(:artist)
      songs = create_list(:song, 5, artist: artist)

      post(mixtapes_url, {no_song: 4,artist: artist}.to_json , accept_headers)
      expect(response).to have_http_status :ok
      expect(response).to match_response_schema :mixtape
    end
  end
end
