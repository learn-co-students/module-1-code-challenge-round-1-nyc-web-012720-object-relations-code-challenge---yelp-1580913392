class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end 
  end 

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end 

  def average_star_rating
    (self.reviews.map do |review|
      review.rating
    end.sum / self.reviews.count.to_f).round(1)
  end 

end
