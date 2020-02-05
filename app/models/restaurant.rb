class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|rev| rev.restaurant == self}
  end

  def customers
    reviews.map {|rev| rev.customer}.uniq
  end

  def average_star_rating
    sum = reviews.reduce(0) {|agg, rev| agg + rev.rating}
    avg = sum / reviews.length
    avg.to_f
  end

  def self.all
    @@all
  end

end
