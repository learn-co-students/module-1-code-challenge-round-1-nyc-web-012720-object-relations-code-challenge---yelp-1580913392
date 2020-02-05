require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Jason", "Chung")
cust2 = Customer.new("Kylian", "Mbappe")
cust3 = Customer.new("Naruto", "Uzamaki")

rest1 = Restaurant.new("Hokage Ramen")
rest2 = Restaurant.new("Ballon D'or Express")
rest3 = Restaurant.new("FlatIron Grill")

review1 = Review.new("Naruto Uzamaki", 5, "Hokage Ramen", "Great!")
review2 = Review.new("Jason Chung", 2, "Ballon D'or Express", "Meh")
review3 = Review.new("Kylian Mbappe", 3, "FlatIron Grill", "Good Service")
review4 = Review.new("Naruto Uzamaki", 4, "FlatIron Grill", "Awesome!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line