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
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

  def total_stars
    self.reviews.map {|review| review.rating}.sum
  end

  def num_reviews
    self.reviews.length
  end

  def avg_star_rating
    self.total_stars.to_f / self.num_reviews.to_f
  end

  #Either way works, not sure what the better form is.  First way splits out method responsibility more, second uses reduce function which is a higher level function and gets the code down to 1 line.
  
  # def avg_star_rating
  #   self.reviews.reduce(0) {|sum, review| sum + review.rating.to_f} / self.num_reviews
  # end

end
