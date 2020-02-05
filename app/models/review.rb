class Review
    attr_accessor :customer, :rating
    attr_reader :review, :restaurant
    @@all = []

    def initialize(customer, rating, restaurant, review)
        @customer = customer
        @rating = rating
        @restaurant = restaurant
        @review = review
        @@all << self
    end

    def self.all
        @@all
    end
end






# #### Review

# - `Review#customer`
#   - returns the customer object for that review[x]
#   - Once a review is created, should not be able to change the customer[x]

# - `Review#restaurant`
#   - returns the restaurant object for that given review[x]
#   - Once a review is created, should not be able to change the restaurant[x]



# #### Review

# - `Review#initialize`
#   - Reviews should be initialized with a customer, restaurant, and a rating (a number)[x]

# - `Review#rating`
#   - returns the rating for a restaurant.[x]

# - `Review.all`
#   - returns all of the reviews[x]