#pear_tree.rb
require_relative 'tree'

class PearTree < Tree
  attr_reader :apples
  def initialize
    super
    @max_growable_age = 30
    @death_age = 32
    @annual_growth = 5
    @min_growable_age = 7
    @pears = []
  end

  def any_pear?
    !@pears.empty?
  end

  def add_fruit
    10.times do
      @pears << Pear.new
    end
  end

  def pick_pear!
    any_pear? ? @pears.pop : "ERROR: No Pears Available"
  end
end