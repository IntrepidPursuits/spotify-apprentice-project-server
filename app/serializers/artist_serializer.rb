class ArtistSerializer < ActiveModel::Serializer
  embed :id
  has_many :songs

  attributes :id, :name, :description, :spotify_uri, :songs_count
end
