class Customer

	@@all = []

  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
  	return @@all
  end

  def reviews
  	Review.all.select {|e| e.customer == self}
  end

  def add_review(restaurant, rating)
  	Review.new(self, restaurant, rating)
  end

  def restaurants
  	self.reviews.map{|e| e.restaurant}.uniq
  end

  def num_reviews
  	self.reviews.length
  end

  def self.find_by_name(name)
  	@@all.find{|e| e.full_name == name}
  end

  def self.find_all_by_given_name(given_name)
  	@@all.select{|e| e.given_name == given_name}
  end

  #Just for fun

  def self.first_least_prolific_user
  	@@all.sort!{|a,b| a.num_reviews <=> b.num_reviews}[0]
  end

  def self.first_most_prolific_user
  	@@all.sort!{|a,b| a.num_reviews <=> b.num_reviews}[-1]
  end

  def self.all_least_prolific_user
  	@@all.select{|e| e.num_reviews == first_least_prolific_user.num_reviews}
  end

  def self.all_most_prolific_user
  	@@all.select{|e| e.num_reviews == first_most_prolific_user.num_reviews}
  end


end
