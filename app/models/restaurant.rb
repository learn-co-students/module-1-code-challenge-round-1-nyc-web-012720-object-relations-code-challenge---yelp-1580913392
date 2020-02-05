class Restaurant
  attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    # @@all << self 
  end
def reviews 
  #returns an array of all reviews for that restaurant 
  self.select do |reviews|
    reviews.restaurant == self  
  end 
end

def customers
  
  self.reviews.map do |res|
    res.customer == self
  end 
    
end

  def self.all
    @@all
  end 

end
