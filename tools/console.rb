require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("Halton", "Bagley")
cust2 = Customer.new("Jeff", "Jones")
cust3 = Customer.new("Chris", "Maxwell")
cust4 = Customer.new("Caroline", "Black")
cust5 = Customer.new("Chris", "Johnson")


rest1 = Restaurant.new("McDonalds")
rest2 = Restaurant.new("BK")
rest3 = Restaurant.new("Wendys")
rest4 = Restaurant.new("KFC")

review1 = Review.new(9, cust1, rest1)
review2 = Review.new(102, cust1, rest2)
review3 = Review.new(3, cust2, rest3)
review4 = Review.new(7, cust2, rest4)
review5 = Review.new(77.4, cust3, rest1)
review6 = Review.new(34, cust3, rest2)
review7 = Review.new(1, cust4, rest3)
review8 = Review.new(8, cust4, rest4)

yo = rest1.average_star_rating


binding.pry
0 #leave this here to ensure binding.pry isn't the last line