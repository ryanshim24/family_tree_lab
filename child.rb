require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
  @@favColors = ["blue", "yellow", "red","orange"]

  def initialize(name, age, gender)
    super(name, age, gender)
    @color = @@favColors.sample
    @@grandchildren += 1
    @@children += 1
  end

  def self.favColors
    @@favColors
  end

  def growUp
    @age += 1
  end

  def talk(text = nil)
    if @age > 2
      puts "#{text} and my favorite color is #{@color}"
    else
      puts "WAHHHHHHA"
    end
  end
      
end
child = Child.new("ryan", 21, "male")
Child.showFamily