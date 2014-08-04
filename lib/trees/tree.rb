#tree.rb
class Tree
  attr_reader  :height, :age
  def initialize
    @height = 0
    @age = 0
    @max_growable_age = 0
    @death_age = 0
    @annual_growth = 0
    @min_growable_age = 0
    @fruits=[]
  end

  def age!
    @age += 1
    growable
    add_fruit if can_bear_fruit?
  end

  def growable
    height! if @age <= @max_growable_age
  end

  def dead?
    @age >= @death_age
  end

  def height!
    @height += @annual_growth
  end

  def can_bear_fruit?
    @age >= @min_growable_age && !dead?
  end

  def any_fruit?
    !@fruits.empty?
  end

  def pick_fruit!
    any_fruit? ? @fruits.pop : "ERROR: No Fruit Available"
  end


end