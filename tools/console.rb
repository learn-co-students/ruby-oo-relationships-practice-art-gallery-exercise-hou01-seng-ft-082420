require_relative '../config/environment.rb'

# Gallery<>Painting<>Artist

# Base Instances
a = Artist.new("Ambreea", 22)
g = Gallery.new("Mosaic", "HTX")

# Association Instance
p = Painting.new("art.", 934, a, g)

# Artist#total_experience Instance
a2 = Artist.new("Bree", 7)

# Artist#most_prolific Instance
p2 = Painting.new("painting.", 2340, a2, g)
p3 = Painting.new("paintingggg.", 9237, a2, g)

#A Artist#create_painting
a.create_painting("ARTZ", 1234, g)

binding.pry

puts "Bob Ross rules."
