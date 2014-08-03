class OrangeTree

	attr_reader :height, :age, :oranges
		#Only for variables that will be accessed outside the class

	def initialize
		@height = 0		#put @ if diff methods will use
		@age = 0
		@oranges = []
	end

	def age! 					#Increase age only
		@age += 1
		growable
	end

	def height! 			#Increase height only
		@height += 10
	end

	def growable 			#Tells you if can or cannot grow
		height! if @age <= 15
	end

	def dead?
		@age >= 20
	end

	def can_bear_fruit?
		@age >= 5 && !dead?
	end

	def any_orange?
		!@oranges.empty?
	end

	def add_orange
		orange = Orange.new
		@oranges << orange
	end

end

class Orange

	attr_reader :diameter

	def initialize
		@diameter = 1
	end

end

##TEST FOR ORANGE TREE
tree = OrangeTree.new
puts tree.height == 0
puts tree.age == 0

tree.age!
puts tree.age == 1
puts tree.height == 10

puts tree.can_bear_fruit? == false
puts tree.any_orange? == false

16.times do
	tree.age!
end

puts tree.can_bear_fruit? == true
100.times do
	tree.add_orange
end

puts tree.oranges.length == 100

puts tree.age == 17
puts tree.height == 150

5.times do
	tree.age!
end

puts tree.dead? == true
puts tree.can_bear_fruit? == false

orange = Orange.new
puts orange.diameter == 1


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