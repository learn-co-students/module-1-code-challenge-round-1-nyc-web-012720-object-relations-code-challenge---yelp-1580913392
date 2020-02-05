class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name (given_name, family_name)
    puts #{given_name} #{family_name}
  end

  def restaurants
    #Returns a **unique** array of all restaurants a customer has reviewed
    self.select do |review|
      review.customer == self 
    end 
  end 

    def add_review (customer, rating)
      #given a **restaurant object** and a star rating (as an integer), 
      #creates a new review and associates it with that customer and restaurant.
      Venue.new(customer, self, rating)
    end 

    def num_reviews
  #Returns the total number of reviews that a customer has authored
  end 

  def self.all
    @@all
  end 
end
