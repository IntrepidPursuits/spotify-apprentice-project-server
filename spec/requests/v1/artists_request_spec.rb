require 'rails_helper'

describe 'artists endpoints' do
  describe 'POST /artists' do
    context 'with valid params' do
      it 'returns a 201 - Created response' do
        post(artists_url, { artist: artist_attrs }.to_json, accept_headers)

        expect(response).to have_http_status :created
      end

      it 'creates a new artist' do
        expect {
          post(artists_url, { artist: artist_attrs }.to_json, accept_headers)
        }.to change { Artist.count }.by 1
      end

      it 'returns JSON for the artist' do
        post(artists_url, { artist: artist_attrs }.to_json, accept_headers)

        expect(response).to match_response_schema :artist
      end
    end

    context 'missing a name' do
      it 'returns a 422 - Unprocessable Entity response'
      it 'returns JSON for errors'
    end

    context 'missing spotify_uri' do
      it 'returns a 422 - Unprocessable Entity response'
      it 'returns JSON for errors'
    end

    context 'when spotify_uri already taken' do
      it 'returns a 422 - Unprocessable Entity response'
      it 'returns JSON for errors'
    end
  end

  describe 'GET /artists' do
    it 'returns JSON for all artists' do
      artists = create_list(:artist, 3)

      get(artists_url, {}, accept_headers)

      expect(response).to have_http_status :ok
      expect(response).to match_response_schema :artists
    end
  end
end

def artist_attrs
  @artist_attrs ||= attributes_for(:artist)
end
