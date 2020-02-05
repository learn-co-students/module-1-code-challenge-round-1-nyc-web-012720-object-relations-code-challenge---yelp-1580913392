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
end

def restaurants
  Review.map do |cust|
    cust.restaurant
  end.uniq
end


# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
# - 
# `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.


# #### Customer

# - `Customer#initialize`
#   - Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
# [x]
# - `Customer#given_name`
#   - returns the customer's given name[x]
#   - should be able to change after the customer is created[x]

# - `Customer#family_name`
#   - returns the customer's family name[x]
#   - should be able to change after the customer is created[x]

# - `Customer#full_name`
#   - returns the full name of the customer, with the given name and the family name concatenated, Western style. [x]

# - `Customer.all`
#   - returns **all** of the customer instances
