#orange_tree.rb
require_relative 'tree'

class OrangeTree < Tree
  attr_reader :oranges
  def initialize
    super
    @max_growable_age = 15
    @death_age = 20
    @annual_growth = 10
    @min_growable_age = 5
    @oranges = []
  end

  def any_orange?
    !@oranges.empty?
  end

  def add_fruit
    10.times do
      @oranges << Orange.new
    end
  end

  def pick_orange!
    any_orange? ? @oranges.pop : "ERROR: No Oranges Available"
  end
end