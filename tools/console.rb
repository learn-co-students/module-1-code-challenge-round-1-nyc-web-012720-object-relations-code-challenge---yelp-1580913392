require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



restaurant1 = Restaurant.new("Pizza Zone")
restaurant2 = Restaurant.new("Burger Zone")
restaurant3 = Restaurant.new("Sloppy Joe Zone")

customer1 = Customer.new("David", "Schwimmer")
customer2 = Customer.new("Courtney", "Cox")
customer3 = Customer.new("Jennifer", "Anniston")

review1 = Review.new(customer2, restaurant3, 1)
review2 = Review.new(customer1, restaurant1, 5)
#review3 - Review.new("It's aight", customer3, restaurant2)
review4 = Review.new(customer2, restaurant1, 3)
review5 = Review.new(customer3, restaurant3, 4)
review6 = Review.new(customer1, restaurant3, 5)
review7 = Review.new(customer1, restaurant2, 2)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line