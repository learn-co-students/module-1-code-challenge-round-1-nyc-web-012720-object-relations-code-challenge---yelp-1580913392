class Customer
  attr_accessor :given_name, :family_name
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
    Review.all.select do |sel|
      sel.customer == self
    end.size
  end

  def self.find_by_name(name)
    self.all.find do |fin|
      fin.given_name == name
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select do |sel|
      sel.given_name == name
    end
  end

  def self.all
    @@all
  end

end
