class Grandparent
  attr_accessor :name, :age, :gender
  @@grandchildren = 0
  @@family = []

  def initialize(name, age, gender)
    @name = name;
    @age = age
    @gender = gender
    @@family << self
  end

  def self.grandchildren
    @@grandchildren
  end

  def self.family
    @@family
  end

  def self.showFamily
    fam_arr = []
    @@family.each do |value|
      sample_hash = {
        relation: value.class.name ,
        name: value.name,
        age: value.age
      }
      fam_arr << sample_hash
    end
    p fam_arr
  end

end

grandparent = Grandparent.new("Joon", 60, "male")