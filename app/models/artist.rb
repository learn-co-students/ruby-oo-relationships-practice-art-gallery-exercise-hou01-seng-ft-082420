class Artist

  attr_reader :name, :years_experience

  @@all = []

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

  def painting_average
    (self.paintings.count).to_f / (self.years_experience).to_f
  end 
  
  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end 
  
  def self.total_experience
    self.all.sum {|artist| artist.years_experience}
  end


  def self.most_prolific
    self.all.max{ |artist| artist.painting_average}
  end 


end