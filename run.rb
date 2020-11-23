require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Central Park Zoo", "Central Park")
zoo2 = Zoo.new("Bronx Zoo", "Bronx")

zebra = Animal.new("zebra", 300, "zz")
giraffe = Animal.new("giraffe", 600, "tall guy")


zoo1_animal = zoo1.add_animal(giraffe)



binding.pry
puts "done"
