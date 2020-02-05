require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

restaurant1 = Restaurant.new("Il Fornetto")
restaurant2 = Restaurant.new("Yemeni Cafe")
restaurant3 = Restaurant.new("Nathans")

customer1 = Customer.new("Zeshan", "Raja")
customer2 = Customer.new("John", "Marston")
customer3 = Customer.new("Bill", "Williamson")
customer4 = Customer.new("Michael", "Weston")
customer5 = Customer.new("Darth", "Vader")

review1 = Review.new(5, customer1, restaurant1)
review2 = Review.new(4, customer1, restaurant2)
review3 = Review.new(4, customer2, restaurant2)
review4 = Review.new(3, customer2, restaurant3)
review5 = Review.new(3, customer3, restaurant3)
review6 = Review.new(2, customer3, restaurant1)
review7 = Review.new(2, customer4, restaurant2)
review8 = Review.new(1, customer5, restaurant1)
review9 = Review.new(5, customer5, restaurant3)
review10 = Review.new(3, customer2, restaurant2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line