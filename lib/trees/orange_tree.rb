require_relative 'tree'

class OrangeTree < Tree
  attr_reader :oranges
  def initialize
    super
    @max_growable_age = 15
    @death_age = 20
    @annual_growth = 10
    @oranges = []
  end

  def can_bear_fruit?
    @age >= 5 && !dead?
  end

  def any_orange?
    !@oranges.empty?
  end

  def add_orange
    10.times do
      @oranges << Orange.new
    end
  end

  def pick_orange!
    # @oranges.pop if any_orange? else "NoOrangesError"
    any_orange? ? @oranges.pop : "NoOrangesError"
  end

end