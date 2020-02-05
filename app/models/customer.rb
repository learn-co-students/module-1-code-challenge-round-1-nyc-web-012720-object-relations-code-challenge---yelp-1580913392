class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    return "#{given_name} #{family_name}"
  end

  def given_name
    self.given_name
  end

  def family_name
    self.family_name
  end

  def restaurants
    self.Review.map do |rev|
      rev.restaurant
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select do |cust|
      cust == self
    end.sum
  end

  def self.find_by_name(full_name)
    
  end

  def self.all
    @@all
  end

end
