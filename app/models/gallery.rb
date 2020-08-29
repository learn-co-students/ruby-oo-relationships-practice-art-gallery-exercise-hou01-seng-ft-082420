class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    self.class.all << self
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
    artists.map {|artist| artist.name}.uniq
  end

  def most_expensive_painting
    #paintings
    expensive_paint = paintings.max do |paint_a, paint_b|
      paint_a.price <=> paint_b.price
    end
   
    #expensive_paint.title #this returns only the name
  end

end
