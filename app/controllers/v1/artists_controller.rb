class V1::ArtistsController < ApiController
  def create
    artist = Artist.new(artist_params)

    if artist.save
      render json: artist, status: :created
    else
      render json: { errors: artist.errors.full_messages },
             status: :unprocessable_entity
    end
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
