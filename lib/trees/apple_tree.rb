require_relative 'tree'

class AppleTree < Tree
  attr_reader :apples
  def initialize
    super
    @max_growable_age = 25
    @death_age = 30
    @annual_growth = 3
    @apples = []
  end
end