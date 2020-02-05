class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

def reviews
  Review.all.select {|rest| rest == self}
end

def customers
  Review.map do |rest|
    rest.customer
  end.uniq
end

# #### Restaurant

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant

# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.


# #### Restaurant

# - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string [x]

# - `Restaurant#name`
#   - returns the restaurant's name [x]
#   - should not be able to change after the restaurant is created [x]