class Customer
  attr_accessor :given_name, :family_name
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

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurants, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    @@all.find do |list|
      list.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    @@all.select do |name_list|
      name_list.given_name == name
    end
  end

end
