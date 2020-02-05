class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
    "#{given_name} #{family_name}"
  end
  def self.all 
    @@all
  end 
  def full_restaurant 
    Review.all.select do |review|
      review.Customer == self
    end 
  end 
  def restaurants
    self.full_restaurant.map do |review|
      review.restaurant

    end.uniq
    
  end 

  def add_review(restaurant, rating)
  end 
end
