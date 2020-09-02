require_relative '../config/environment.rb'

#Begin Test Variable
a1 = Artist.new("Ben",7)
a2 = Artist.new("Mike",9)
a3 = Artist.new("Ol' Stevie",9)

g1 = Gallery.new("MET","New York")
g2 = Gallery.new("Menil","Houston")
g3 = Gallery.new("Fine Arts","Denver")

p1 = Painting.new("Mona Lisa",500,g3,a1)
p2 = Painting.new("Sistine Chapel",15,g2,a3)
p3 = Painting.new("Scream",1000000,g1,a2)
p4 = Painting.new("Poker Dogs",2000000,g1,a3)

binding.pry

puts "Bob Ross rules."
