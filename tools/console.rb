require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

## CUSTOMERS
lee = Customer.new("Lee", "Mac")
lou = Customer.new("Lou", "Alejos")
ricky = Customer.new("Ricky", "Waha")
shaq = Customer.new("Shaq", "Oneal")
david = Customer.new("David", "Shin")
david2 = Customer.new("David", "Ricketts")
april = Customer.new("April", "Escobar")

## RESTAURANTS
mcd = Restaurant.new("mcdonalds")
bk = Restaurant.new("burger king")
wendys = Restaurant.new("wendys")
subway = Restaurant.new("subway")

## REVIEWS

lee.add_review(mcd, 10)
lee.add_review(bk, 7)
lee.add_review(wendys, 6)
lee.add_review(subway, 8)
lou.add_review(subway, 8)
lou.add_review(bk, 6)
lou.add_review(mcd, 8)
david.add_review(mcd, 5)
david.add_review(bk, 7)
david2.add_review(subway, 8)
david2.add_review(mcd, 10)
april.add_review(mcd, 10)
shaq.add_review(bk, 3)
ricky.add_review(wendys, 4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line