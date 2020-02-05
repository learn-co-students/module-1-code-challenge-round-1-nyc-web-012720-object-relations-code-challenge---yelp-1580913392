class Restaurant
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review|review.restaurant==self}
  end
  
  def customers
    self.reviews.map{|restaurant|restaurant.customer}
  end

  def average_star_rating
    self.reviews.reduce(0){|total,r| total +r.rating}/self.customers.count
  end





end
