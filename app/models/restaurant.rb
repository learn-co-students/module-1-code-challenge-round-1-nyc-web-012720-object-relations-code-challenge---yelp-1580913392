class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def reviews
    result = []
    Review.all.each do |eac|
      result << eac.rating if eac.restaurant == self
    end
    result
  end

  def customers
    Review.all.select do |sel|
      sel.restaurant == self
    end
  end

  def average_star_rating
    result = []
    Review.all.each do |mem|
     result << mem.rating if mem.restaurant == self
    end
    result.sum / result.size
  end

  def self.all 
    @@all
  end
end
