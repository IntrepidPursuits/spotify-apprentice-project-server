class SongSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :spotify_uri

  has_one :artist, embed: :ids

  def mixtape

  end
end
