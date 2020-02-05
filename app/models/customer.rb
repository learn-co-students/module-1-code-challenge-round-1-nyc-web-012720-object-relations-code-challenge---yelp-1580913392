class Customer
  attr_reader :given_name, :family_name, :full_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    Review.all.select{|review| review.customer == self}
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.restaurants.length  
  end

  def self.find_by_name(name)
    # self.all.find{|name|}
  end

end
