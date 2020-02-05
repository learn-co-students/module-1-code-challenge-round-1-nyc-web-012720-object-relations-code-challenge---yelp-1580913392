class Review

    attr_accessor  :rating
    attr_reader    :customer, :restaurant

    @@all = []

    def initialize (customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        @@all << self
    end

    def customer 
        Customer.all.find do |customer|
            self.customer == customer
        end
    end

    def restaurant
        Restaurant.all.find do |restaurant|
            self.restaurant == restaurant
        end
    end

    def self.all 
        @@all
    end
  
end