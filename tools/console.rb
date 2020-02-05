require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("Ramzy", "Badawy")
cust2 = Customer.new("Dwanye", "Wade")
cust3 = Customer.new("Lebron", "James")

res1 = Restaurant.new("Chipotle")
res2 = Restaurant.new("McDonalds")
res3 = Restaurant.new("Naya")



rev1 = Review.new(8, cust1, res1)
rev2 = Review.new(2, cust3, res2)
rev3 = Review.new(9, cust1, res3)
rev4 = Review.new(7, cust2, res2)
rev5 = Review.new(10, cust3, res3)
rev6 = Review.new(1, cust2, res1)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line