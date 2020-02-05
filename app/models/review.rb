class Review
    attr_reader :customer, :review
  @@all = []
    def initialize (rating, customer, restaurant)
        @rating = rating 
        @customer = customer
        @restaurant = restaurant
        @@all << self 
    end 

    def customer 
        #returns the customer object for that review
        self.select do |review|
            review.customer == self  
        end 
    end 

    def restaurant
    #returns the restaurant object for that given review
    self.all.map do |restaurant|
        restaurant.review == self 
    end 



    def self.all 
        @@all
    end 

end