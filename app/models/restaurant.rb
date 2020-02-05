class Restaurant
  attr_accessor :reviews, :customers 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @reviews = reviews
    @customers = customers

    @@all << self 
  end


  def self.all
    @@all 
  end 

  def customers
    customer.uniq
  end 

  def average_star_rating 
   

  end 

  
  
end
