require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joe = Customer.new("Joe", "Smithee")
joe2 = Customer.new("Joe", "Block")
rick = Customer.new("Rick", "Sanchez")
morty = Customer.new("Morty", "Smith")

sal = Restaurant.new("Fat Sal's Pizza")
mcd = Restaurant.new("McDonald's")
cirque = Restaurant.new("Le Cirque")

review1 = Review.new(joe, sal, 6)
review2 = Review.new(joe, mcd, 2)
review3 = Review.new(joe, cirque, 10)
review4 = Review.new(rick, sal, 4)
review5 = Review.new(rick, mcd, 3)
review6 = Review.new(morty, sal, 5)
review7 = Review.new(joe, sal, 5)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line