require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Customer:
ray = Customer.new("Ray", "Collins")
mae = Customer.new("Mae", "Lee")
kai = Customer.new("Kai", "Reed")
ann = Customer.new("Ann", "Saw")

#Restaurant:
jollibee = Restaurant.new("Jollibee")
tamashii = Restaurant.new("Tamashii")
pinknori = Restaurant.new("Pink Nori")
checkers = Restaurant.new("Checkers")

#Reviews:
rev1 = Review.new(ray, jollibee, 5)
rev2 = Review.new(ray, tamashii, 5)
rev3 = Review.new(ray, pinknori, 5)
rev4 = Review.new(ray, jollibee, 3)
rev5 = Review.new(mae, jollibee, 4)
rev6 = Review.new(mae, tamashii, 4)
rev7 = Review.new(mae, pinknori, 4)
rev8 = Review.new(kai, jollibee, 3)
rev9 = Review.new(kai, checkers, 3)
rev10 = Review.new(kai, jollibee, 3)
rev11 = Review.new(ann, tamashii, 5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line