require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
david = Customer.new("David","Lee")
jason = Customer.new("Jason","Chung")
christina = Customer.new("Christina","Jung")
david_s = Customer.new("David","Shin")

mcdonalds = Restaurant.new("McDonalds")
chipotle = Restaurant.new("Chipotle")
naya = Restaurant.new("Naya")
flavors = Restaurant.new("Flavors")

mcd_review = Review.new(david,mcdonalds,6)
chip_review = Review.new(jason,chipotle,7)
naya_review = Review.new(christina,naya,9)
flavors_review = Review.new(david,flavors,8)
naya_2 = Review.new(david,naya,10)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line