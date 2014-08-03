class Tree
	attr_reader  :height, :age
	def initialize
		@height = 0
		@age = 0
		@max_growable_age = 0
		@death_age = 0
		@annual_growth = 0
	end

	def age!
		@age += 1
		growable
		# add_orange if can_bear_fruit?
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
end



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

class Fruit
	attr_reader :diameter
	def initialize
		@diameter = 1
	end
end

class Orange < Fruit
end

class Apple < Fruit
end

##TEST FOR ORANGE TREE
puts "==============================ORANGE"
tree = OrangeTree.new
puts tree.height == 0
puts tree.age == 0

tree.age!
puts tree.age == 1
puts tree.height == 10

puts tree.pick_orange!
puts tree.can_bear_fruit? == false
puts tree.any_orange? == false

16.times do
	tree.age!
end

puts tree.can_bear_fruit? == true

puts tree.age
puts tree.oranges.length

tree.pick_orange!
puts tree.oranges.length

puts tree.age == 17
puts tree.height == 150

5.times do
	tree.age!
end

puts tree.dead? == true
puts tree.can_bear_fruit? == false

orange = Orange.new
puts orange.diameter == 1

##TEST FOR APPLE TREE
puts "==============================APPLE"
tree2 = AppleTree.new
# puts tree.height
puts tree2.height == 0
puts tree2.age == 0

tree2.age!
puts tree2.age == 1
puts tree2.height == 3

# puts tree2.pick_apple!
# puts tree2.can_bear_fruit? == false
# puts tree2.any_apple? == false

# 16.times do
# 	tree2.age!
# end

# puts tree2.can_bear_fruit? == true

# puts tree2.age
# puts tree2.apples.length

# tree2.pick_apple!
# puts tree2.apples.length

# puts tree2.age == 17
# puts tree2.height == 150

# 5.times do
# 	tree2.age!
# end

# puts tree2.dead? == true
# puts tree2.can_bear_fruit? == false

# apple = Apple.new
# puts apple.diameter == 1


# tree.age! until tree.any_oranges?

# puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

# until tree.dead?
# basket = []

# # It places the oranges in the basket
# # IT PLACES THE ORANGES IN THE BASKET
# while tree.any_oranges?
#   basket << tree.pick_an_orange!
# end

# avg_diameter = # It's up to you to calculate the average diameter for this harvest.

# puts "Year #{tree.age} Report"
# puts "Tree height: #{tree.height} feet"
# puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
# puts ""

# # Age the tree another year
# tree.age!
# end
# puts "Alas, the tree, she is dead!"