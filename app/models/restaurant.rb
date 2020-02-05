class Restaurant

    @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    rev_rest = self.reviews.select{|review| review.restaurant == self}
    rev_only = rev_rest.map{|review| review}
    rev_only.sum / self.reviews.length
  end
end
