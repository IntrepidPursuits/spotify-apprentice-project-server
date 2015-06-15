class AddArtistIdToSong < ActiveRecord::Migration
  def change
    remove_column :songs, :artist, :string
    add_reference :songs, :artist, index: true, foreign_key: true, type: :uuid
  end
end
