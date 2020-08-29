#require 'pry'
class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    self.class.all << self 
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end 

  def galleries
    paintings.map {|art| art.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}.uniq
  end


  def self.total_experience
    @@all.map {|artist| artist.years_experience}.sum
  end 

  # def painting_quantity
  #   paintings.count
  #   #self.map {|artist| artist.paintings.count.to_f / artist.years_experience.to_f}
  # end 

  def self.most_prolific
    #@@all.map {|artist| artist.painting_quantity.to_f / artist.years_experience.to_f}
    @@all.max_by {|artist| artist.paintings.count.to_f / artist.years_experience.to_f }

  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
  #binding.pry 

end
