class Customer
  attr_reader :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name = family_name
    @@all << self
  end

  ######  INSTANCE METHODS  ###### 

  def full_name
    "#{given_name} #{family_name}"
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def restaurants
    self.select_reviews.map do |review|
      review.restaurant
    end.uniq
  end 

  def num_reviews
    self.select_reviews.count
  end 

  ######  CLASS METHODS  ###### 

  def self.all
    @@all 
  end 

  def self.find_by_name(name)
    all.find do |customer|
      customer.full_name == name
    end 
  end 

  def self.find_all_by_given_name(name)
    all.select do |customer|
      customer.given_name == name
    end
  end 

    ######  HELPER METHODS  ###### 

  def select_reviews
    Review.all.select do |review|
      review.customer == self
    end 
  end 


end
