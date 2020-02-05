require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer_1 = Customer.new("george", "washington")
customer_2 = Customer.new("brack", "obama")
customer_3 = Customer.new("donald", "trump")
customer_4 = Customer.new("george" ,"martin")

restaurant_1 = Restaurant.new("grace's pizza")
restaurant_2 = Restaurant.new("mcdonald")
restaurant_3 = Restaurant.new("burger king")
restaurant_4 = Restaurant.new("sigon")

review_1 = Review.new(customer_1, restaurant_1, 10)
review_2 = Review.new(customer_1, restaurant_2, 2)
review_3 = Review.new(customer_2, restaurant_3, 4)
review_4 = Review.new(customer_3, restaurant_4, 7)
review_5 = Review.new(customer_3, restaurant_1, 8)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line