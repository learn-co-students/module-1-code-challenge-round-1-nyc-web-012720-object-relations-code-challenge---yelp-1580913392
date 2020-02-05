require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kelly = Customer.new("Kelly", "Becker")
joey = Customer.new("Joey", "Schmits")
cheryl = Customer.new("Cheryl", "Bonhom")

supper = Restaurant.new("Supper")
heidi = Restaurant.new("Heidi's House")
boca = Restaurant.new("Boca")

rev1 = Review.new(3, kelly, heidi)
rev2 = Review.new(4, kelly, supper)
rev3 = Review.new(2, kelly, boca)
rev4 = Review.new(5, joey, supper)
rev5 = Review.new(3, joey, boca)
rev6 = Review.new(2, cheryl, boca)
rev7 = Review.new(5, cheryl, heidi)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line