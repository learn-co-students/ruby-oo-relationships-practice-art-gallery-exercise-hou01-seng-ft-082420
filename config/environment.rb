require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

binding.pry 

a1 = Artist.new("Doug", 6)
a2 = Artist.new("Andy W.", 9)
g1 = Gallery.new("glip glop", "Montreal")
p1 = Painting.new("Title", 250, a1, g1)
p2 = Painting.new("Soup", 400, a2, g1)