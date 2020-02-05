require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chickfilla=Restaurant.new("Chickfila")
chipotle=Restaurant.new("Chipotle")
kfc=Restaurant.new("KFC")

bruce=Customer.new("Bruce","Lee")
osgood=Customer.new("Osgood","Gunawan")
edward=Customer.new("Edward","Huang")
chris=Customer.new("Christ","Huang")
edward1=Customer.new("Edward","Gunawan")



positive=Review.new(osgood,chipotle,9)
positive=Review.new(chris,chipotle,10)
negative=Review.new(edward,kfc,2)
negative1=Review.new(osgood,kfc,4)
moderate=Review.new(bruce,chickfilla,5)
moderate=Review.new(edward1,chickfilla,7)




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line