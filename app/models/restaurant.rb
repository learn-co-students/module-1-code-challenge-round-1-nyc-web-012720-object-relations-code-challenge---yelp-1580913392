class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  ### CLASS METHODS ###
  def self.all
    @@all
  end

  ### INSTANCE METHODS ###
  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    rating_total = self.reviews.reduce(0){|total, review| total + review.rating}
    rating_count = self.reviews.count

    rating_total / rating_count
  end

end
