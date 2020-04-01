class Artist
  attr_accessor :name, :genre
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name)
    song.genre = genre
    song.artist = self
    save
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end
end
