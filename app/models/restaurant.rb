class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all

  end 

  def customers
    
    reviews = Review.all.select do |review|
      review.restaurant == self
    end

    customers = reviews.map do |review|
      review.customer
    end 

    customers.uniq
  
  end 

  def reviews #helper
    Review.all.select do |review|
      review.restaurant == self
    end 
  end

  def average_star_rating
    added_reviews = 0
    reviews.each do |review|
      added_reviews += review.rating 
    end

    added_reviews / reviews.length.to_f

  end 

end
