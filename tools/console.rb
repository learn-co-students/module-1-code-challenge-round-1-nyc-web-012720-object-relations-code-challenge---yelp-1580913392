require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



sam = Customer.new("sam", "t")
amanda = Customer.new("amanda", "r")
tyrone = Customer.new("tyrone", "a")

mcd = Restaurant.new("MCD")
bk = Restaurant.new("BK")
t_bell = Restaurant.new("T-bell")

review1 = Review.new(sam, bk, 4)
review2 = Review.new(tyrone, bk, 4)
review3 = Review.new(tyrone, bk, 4)
review4 = Review.new(tyrone, bk, 4)
review5 = Review.new(sam, mcd, 4)
review6 = Review.new(amanda, mcd, 4)
review7 = Review.new(tyrone, mcd, 2)
review8 = Review.new(sam, mcd, 2)
review9 = Review.new(amanda, mcd, 2)
review10 = Review.new(sam, mcd, 2)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line