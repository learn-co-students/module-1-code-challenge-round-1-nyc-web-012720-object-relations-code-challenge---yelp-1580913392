class Customer
  attr_accessor :given_name, :family_name, :restaurants, :full_name


  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @restaurants = restaurants
    @full_name = full_name 

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end 

  def self.find_by_name(name)
    self.full_name.find do |cust|
      cust.full_name == self 
    end 
  end 

  def self.find_all_by_given_name(name)
    self.given_name.select do |cust|
      cust.given_name == self 
    end 
  end 

  def restaurants
    restaurants.uniq
  end 

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end 

  def num_reviews
    Review.all.select do |cust|
      cust.full_name 
    end 
  end

  
end
