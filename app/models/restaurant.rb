class Restaurant
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self 
  end

  def reviews
    Review.all.select { |review_obj| review_obj.restaurant == self }
  end 

  def customers
    Review.all.select{ |review_obj| review_obj.customer == self}
  end 

  def self.all
    @@all
  end 

end
