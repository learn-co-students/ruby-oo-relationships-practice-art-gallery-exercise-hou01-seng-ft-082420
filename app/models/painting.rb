class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    self.class.all.push(self)
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum {|painting| painting.price}
  end
  
end