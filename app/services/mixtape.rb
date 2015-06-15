class Mixtape

  def self.generate(no_song = 5, artists:)
    new.generate(no_song, artists: artists)
  end

  def generate(no_song = 5, artists:)
    if artists.blank?
      Song.limit(no_song).order("RANDOM()")
    else
      Song.where(artist: artists).limit(no_song).order("RANDOM()")
    end
  end

end
