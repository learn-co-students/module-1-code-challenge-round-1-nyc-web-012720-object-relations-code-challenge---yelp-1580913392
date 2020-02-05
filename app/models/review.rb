class Review 
  attr_accessor :rating, :customer, :restaurant

    @@all = []
  def initialize(rating, customer, restaurant)
    @rating = rating
    @customer = customer
    @restaurant = restaurant

    @@all << self
  end

  def customer 
    Review.all.map do |rev| rev.customer
    end
  end

  def restaurant 
    Review.all.map { |rev| rev.restaurant }
  end

  def self.all
    @@all
  end
  
end