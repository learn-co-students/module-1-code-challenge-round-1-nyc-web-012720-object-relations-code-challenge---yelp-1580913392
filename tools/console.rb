require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# customer 
#  def initialize(given_name, family_name)
Sekou = Customer.new("Sekou", "Dosso")
Bilal = Customer.new("Bilal", "Diomande")
Ben = Customer.new("Ben", "Konate")
Aziz = Customer.new("Aziz", "Dosso")
Peter = Customer.new("Peter", "Bill")

# Restaurant 
# def initialize(name)
Bronx = Restaurant.new("Bronx")
Manhattan = Restaurant.new("Manhattan")
Brooklyn = Restaurant.new("Brooklyn")

# Review 
# def initialize(customer, restaurant, rating)
review1 = Review.new(Sekou, Bronx, 4)
review2 = Review.new(Bilal, Bronx, 4)
review3 = Review.new(Ben, Manhattan, 5)
review4 = Review.new(Aziz, Brooklyn, 3)
review5 = Review.new(Peter, Bronx, 5)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line