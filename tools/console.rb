require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#Restaurants
fridays = Restaurant.new("Fridays")
chilis = Restaurant.new("Chilis")
applebees = Restaurant.new("Applebees")
#Customers
ricky = Customer.new("Ricky", "Wahba")
derek = Customer.new("Derek", "Jeter")
lebron = Customer.new("Lebron", "James")
patrick = Customer.new("Patrick", "Mahommes")
rick2 = Customer.new("Ricky", "W")
rick3 = Customer.new("Ricky", "J")
#Reviews
star5 = Review.new(5, ricky, applebees)
star3 = Review.new(3, ricky, applebees)
star2 = Review.new(2, lebron, applebees)
star2p = Review.new(2, patrick, applebees)
star2p2 = Review.new(2, patrick, applebees)
star5d = Review.new(5, derek, fridays)
star5p = Review.new(5, patrick, fridays)
#Customer Makes Review
newstar6 = lebron.add_review(applebees, 6)
newstar4 = lebron.add_review(chilis, 4)
newstar3 = derek.add_review(chilis, 3)
newstar2 = ricky.add_review(fridays, 1)
#Tests
found_name = Customer.find_by_name("Derek Jeter")
averagerat = applebees.average_star_rating
rickgive = Customer.find_all_by_given_name("Ricky")
ricknum = ricky.num_reviews
derekrests = derek.restaurants
rickyrests = ricky.restaurants
app = applebees.customers
app2 = applebees.reviews
rev_rest = star2.restaurant
rev_cust = star2.customer
revAll = Review.all
revrate = star5.rating
#---
binding.pry
0 #leave this here to ensure binding.pry isn't the last line