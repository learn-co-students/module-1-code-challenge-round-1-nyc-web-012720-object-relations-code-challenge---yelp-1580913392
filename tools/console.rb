require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


r1 = Restaurant.new("first-restr")
r2 = Restaurant.new("second-restr")
r3 = Restaurant.new("first-restr")
r4 = Restaurant.new("second-restr")
r5 = Restaurant.new("first-restr")
r6 = Restaurant.new("second-restr")

c1 = Customer.new("Jorge", "Basilio")
c2 = Customer.new("Jorge", "Basilio")
c3 = Customer.new("Jorge", "Basilio")
c5 = Customer.new("Jorge", "Basilio")
c4 = Customer.new("Jorge", "Basilio")

rv1 = Review.new(c1, r1, 3)
rv2 = Review.new(c3, r6, 5)
rv3 = Review.new(c4, r3, 2)
rv4 = Review.new(c2, r4, 6)
rv5 = Review.new(c1, r2, 3)
rv6 = Review.new(c5, r1, 5)
rv7 = Review.new(c1, r4, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line