class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def reviews
    Review.all.map do |rest|
      rest.name == self
    end
  end

  def avg_star_rating
    sum = self.reviews.map |rest|
    rest.rating
  end.sum
    sum / self.reviews.Length
  end

  def customers
    self.reviews.map do |cust|
      cust
  end

  def self.all
    @@all
  end

end
