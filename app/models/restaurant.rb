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
    Review.all.select{|r|r.restaurant == self}
  end

  def customers
    self.reviews.map{|r|r.customer}.uniq
  end

  def average_star_rating
    total_rating = self.reviews.map{|r|r.rating}.sum
    num_reviews = self.reviews.count
    average = (total_rating/num_reviews).to_f
  end

end
