require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lemons = Restaurant.new("Lemons")
beauty = Restaurant.new("Beauty And Essex")
happiest = Restaurant.new("Happiest Hour")

rich = Customer.new("Richard", "Astacio")
ingrid = Customer.new("Ingrid", "Ordonez")
claudia = Customer.new("Claudia", "Santos")
richy_rich = Customer.new("Richard", "Rodriguez")

amazing = Review.new(claudia, beauty, 10)
good = Review.new(ingrid, lemons, 8)
bad = Review.new(rich, happiest, 3)
terrible = Review.new(rich, lemons, 1)
soso = Review.new(ingrid, lemons, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line