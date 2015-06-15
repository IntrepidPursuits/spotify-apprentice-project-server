class CreateSongs < ActiveRecord::Migration
  def change

    create_table :songs, id: :uuid do |t|
      t.timestamps null: false
      t.string :name
      t.string :artist
      t.string :spotify_uri
    end

    add_index :songs, :spotify_uri, unique: true
  end
end
