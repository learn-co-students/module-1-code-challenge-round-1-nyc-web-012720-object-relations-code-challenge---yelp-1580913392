class Review
    attr_accessor   :rating 
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        @@all << self 
    end 
    def self.all 
        @@all
    end 
    
    # Review#customer
    # returns the customer object for that review
    # Once a review is created, should not be able to change the customer
    
    def customer #(given_review)
        @@all.select do |review| 
            review.customer == self.customer 
        end 
    end 

    # Review#restaurant
    # returns the restaurant object for that given review
    # Once a review is created, should not be able to change the restaurant
    
    def restaurant #(given_review)
        Review.all.select do |review|
            review.restaurant == self.restaurant 
        end 
        
    end 
    
  
end