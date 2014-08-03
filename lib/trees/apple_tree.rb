#apple_tree.rb
require_relative 'tree'

class AppleTree < Tree
  attr_reader :apples
  def initialize
    super
    @max_growable_age = 25
    @death_age = 30
    @annual_growth = 3
    @min_growable_age = 6
    @apples = []
  end

  def any_apple?
    !@apples.empty?
  end

  def add_fruit
    10.times do
      @apples << Apple.new
    end
  end

  def pick_apple!
    any_apple? ? @apples.pop : "ERROR: No Apples Available"
  end
end