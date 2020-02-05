class Restaurant
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
    restaurant = Review.all.select { |rev| 
      rev.restaurant == self }
      restaurant. map { |rest| rest.rating }
  end 

  def customers
    Review.all.map { |rev| rev.customer }
  end

  def self.all
    @@all
  end

end
