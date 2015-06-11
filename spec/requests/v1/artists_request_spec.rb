require 'rails_helper'

describe 'artists endpoints' do
  describe 'GET /artists' do
    it 'returns JSON for all artists' do
      artists = create(:artist)
      songs = create_list(:song, 3, artist: artists)

      get(artists_url, {}, accept_headers)
      expect(response).to have_http_status :ok
      expect(response).to match_response_schema :artists
    end
  end
end
