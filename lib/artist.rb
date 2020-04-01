class Artist
  attr_accessor :name, :genre
  @@all = []

  def initialize(name, genre)
    @name = name
    @genre = genre
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    save
    song.artist = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
end
