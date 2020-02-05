class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self 
  end

  def self.all 
    @@all 
  end

  def reviews 
    Review.all.select { |review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer.given_name}
  end

  def average_star_rating
    reviews.map { |review| review.rating}.sum / reviews.length
  end

end
