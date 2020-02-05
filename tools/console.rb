require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Applebees")
rest2 = Restaurant.new("Chili's")
rest3 = Restaurant.new("Mcdonald's")
rest4 = Restaurant.new("All American")

jared = Customer.new("Jared", "Fleming")
brittany = Customer.new("Brittany", "Ogara")
loki = Customer.new("Loki", "Fleming")
andy = Customer.new("Andy", "Hughes")
chris = Customer.new("Chris", "Johnson")

review1 = Review.new(jared, rest1, 7)
review2 = Review.new(jared, rest3, 10)
review3 = Review.new(brittany, rest2, 6)
review4 = Review.new(loki, rest4, 10)
review5 = Review.new(andy, rest1, 2)
review6 = Review.new(chris, rest1, 10)
review7 = Review.new(andy, rest2, 6)
review8 = Review.new(jared, rest4, 9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
# ruby tools/console.rb