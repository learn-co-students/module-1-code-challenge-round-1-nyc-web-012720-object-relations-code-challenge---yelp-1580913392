class Review
    @@all=[]
    attr_reader :customer, :restaurant
    attr_accessor :rating

    def initialize (customer,restaurant,rating)
        @customer=customer
        @restaurant=restaurant
        @rating=rating.to_f

        @@all << self

    end

    def self.all
        @@all
    end




        
  
end