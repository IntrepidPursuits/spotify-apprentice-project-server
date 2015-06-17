class V1::ArtistsController < ApplicationController
  def create
    artist = Artist.new(artist_params)

    artist.save
    
    render json: artist, status: :created
  end

  def index
    artists = Artist.all

    render json: artists
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description, :spotify_uri)
  end
end
