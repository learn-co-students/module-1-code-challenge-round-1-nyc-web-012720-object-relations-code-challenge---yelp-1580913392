class Review
    
    attr_accessor :rating, :customer, :restaurant
    @@all = []
    
    def initialize(rating, customer, restaurant)
        @rating = rating 
        @customer = customer
        @restaurant = restaurant
        @@all << self 
    end 
    
    def customer
        Review.all.map{ |reviews| reviews.customer}
    end 

    # def restaurant
    #     Review.all.map{ |review| review.restaurant}
    # end 
    
    def self.all 
        @@all 
    end
  
end