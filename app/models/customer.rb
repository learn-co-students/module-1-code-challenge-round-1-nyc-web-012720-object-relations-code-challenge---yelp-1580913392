class Customer
  attr_accessor :given_name, :family_name
  @@all=[]

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end


  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|review| review.customer ==self}
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurants,rating)
  end

  def num_reviews
    self.restaurants.reduce(0){|total,r| total +r.rating}
  end

  def self.find_by_name(name)
    self.all.find{|n| n.full_name ==name}
  end

  def self.find_all_by_given_name(name)
    self.all.select{|n| n.given_name==name}
  end



end
