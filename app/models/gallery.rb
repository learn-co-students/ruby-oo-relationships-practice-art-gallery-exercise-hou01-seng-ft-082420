class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}
  end

  def artist_names
    duplicate_artists = artists.map {|artist| artist.name}
    duplicate_artists.uniq
  end

  #needs to be cleaned up
  def most_expensive_painting
    paintings.max {|painting| painting.price}
  end

end
