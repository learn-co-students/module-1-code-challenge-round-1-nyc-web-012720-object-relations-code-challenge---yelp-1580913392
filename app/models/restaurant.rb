class Restaurant

	@@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def reviews
  	Review.all.select {|e| e.restaurant == self}
  end

  def customers
  	self.reviews.map{|e| e.customer}.uniq
  end

  def average_star_rating
 	return ((self.reviews.reduce(0) {|agg, review| agg + review.rating})/(self.reviews.length))
  end

  #Just for fun
  def self.first_lowest_rated_restaurant
  	@@all.sort!{|a,b| a.average_star_rating <=> b.average_star_rating}[0]
  end

  def self.first_highest_rated_restaurant
  	@@all.sort!{|a,b| a.average_star_rating <=> b.average_star_rating}[-1]
  end

  def self.all_lowest_rated_restaurant
  	@@all.select{|e| e.num_reviews == first_lowest_rated_restaurant.average_star_rating}
  end

  def self.all_highest_rated_restaurant
  	@@all.select{|e| e.num_reviews == first_highest_rated_restaurant.average_star_rating}
  end

end