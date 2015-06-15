class AddSongsCountToArtists < ActiveRecord::Migration

  def change
    add_column :artists, :songs_count, :integer, null: false, default: 0
  end

end
