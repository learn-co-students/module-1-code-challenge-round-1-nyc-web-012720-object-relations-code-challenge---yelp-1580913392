require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chip = Restaurant.new("Chipotle")
chinese = Restaurant.new("Luck Foo")
steak = Restaurant.new("Outback Steak House")

cust1 = Customer.new("Sam", "Chen")
cust2 = Customer.new("Jason", "Wong")
cust3 = Customer.new("Allen", "Po")
cust4 = Customer.new("Sam", "Kong")

rev1 = Review.new(cust1, chip, 4)
rev2 = Review.new(cust2, chinese, 4.5)
rev3 = Review.new(cust3, steak, 4.2)
rev4 = Review.new(cust1, chinese, 3.9)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line