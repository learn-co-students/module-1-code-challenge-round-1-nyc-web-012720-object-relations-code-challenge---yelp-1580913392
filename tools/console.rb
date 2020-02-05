require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Rest1 = Restaurant.new("Chicken")
Rest2 = Restaurant.new("Mexican")
Rest3 = Restaurant.new("Salad")

C1 = Customer.new("Leon", "Jamison")
C2 = Customer.new("Bill", "Riley")
C3 = Customer.new("Pam", "Warren")

R1 = Review.new(C1, Rest1, 5)
R2 = Review.new(C2, Rest2, 3)
R3 = Review.new(C3, Rest3, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line