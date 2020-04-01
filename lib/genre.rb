class Genre
  attr_accessor :name, :artists, :songs
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end
end
