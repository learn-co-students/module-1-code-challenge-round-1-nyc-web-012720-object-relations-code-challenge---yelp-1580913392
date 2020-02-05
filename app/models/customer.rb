class Customer
  attr_reader :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  def self.find_by_name (name)

  end

  def self.all 
    @@all 
  end
end
