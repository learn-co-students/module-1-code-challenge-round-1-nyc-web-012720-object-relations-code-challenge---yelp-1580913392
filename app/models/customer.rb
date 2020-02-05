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

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end

    restaurants = reviews.map do |review|
      review.customer
    end 

    restaurants.uniq
  end 

  def reviews #helper
    Review.all.select do |review|
      review.customer == self
    end 
  end 

  def num_reviews
    reviews.length 
  end 

  def self.find_by_name(name_string)
    self.all.find do |cust|
      cust.full_name == name_string
    end 
  end

  def self.find_all_by_given_name(first_name)
    self.all.select do |customer|
      customer.given_name == first_name
    end
  end

end
