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

  def reviews
    Review.all.select{|r|r.customer == self}
  end

  def restaurants
    self.reviews.map{|r|r.restaurant}
  end

  def add_review(restaurant, rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    @@all.find{|cust|cust.full_name == name}
  end

  def self.find_all_by_given_name(name)
    @@all.find_all{|cust|cust.given_name == name}
  end


end
