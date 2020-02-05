class Customer

  @@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{self.given_name} #{self.family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    res_review = Review.all.select{|review| review.restaurant == self}
    res_review.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    new_rev = Review.new(self, restaurant, rating)
  end

  def num_reviews
   all_review = Review.all.select{|review| review.customer == self}
   all_review.length
  end

  def self.find_by_name(name)
    self.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.find{|customer| customer.firstname == name}
  end
end
