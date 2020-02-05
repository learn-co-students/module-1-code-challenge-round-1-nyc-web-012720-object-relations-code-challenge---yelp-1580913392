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
    Review.all.select {|review| review.restaurant === self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    rating_sum = reviews.map {|review| review.rating}.sum.to_f
    rating_sum / reviews.length
  end

end
