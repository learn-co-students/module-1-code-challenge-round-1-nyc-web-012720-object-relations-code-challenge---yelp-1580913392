require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

res1 = Restaurant.new("Toki")
res2 = Restaurant.new("Mew")
res3 = Restaurant.new("Burgers")
res4 = Restaurant.new("Sushi")
res5 = Restaurant.new("Fries")

cust1 = Customer.new('Adit', 'Patel')
cust2 = Customer.new('Dude', 'Man')
cust3 = Customer.new('Bro', 'Sidon')
cust4 = Customer.new('Jo', 'Seph')

rv1 = Review.new(cust1, res1, 2.4)
rv2 = Review.new(cust2, res2, 1.1)
rv3 = Review.new(cust3, res3, 3.2)
rv4 = Review.new(cust4, res4, 4.4)
rv5 = Review.new(cust1, res5, 3.3)
rv6 = Review.new(cust2, res5, 2.7)
rv7 = Review.new(cust3, res5, 1.5)
rv8 = Review.new(cust4, res4, 2.4)
rv9 = Review.new(cust1, res4, 4.7)
rv10 = Review.new(cust2, res4, 3.3)
rv11 = Review.new(cust3, res4, 5.0)
rv12 = Review.new(cust4, res4, 2.8)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line