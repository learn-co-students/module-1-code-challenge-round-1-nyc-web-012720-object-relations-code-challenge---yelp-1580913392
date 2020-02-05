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

  def reviews
    Review.all.select {|rev| rev.customer == self}
  end

  def restaurants
    reviews.map {|rev| rev.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(rating, self, restaurant)
  end

  def num_reviews
    reviews.length
  end

  def self.find_by_name(name)
    @@all.find {|cust| cust.full_name == name}
  end

  def self.find_all_by_given_name(name)
    @@all.select {|cust| cust.given_name == name}

  end

  def self.all
    @@all
  end
end
