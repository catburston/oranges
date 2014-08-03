#oranges.rb
class OrangeTree

	attr_reader :height, :age

	def initialize
		@height = 0
		@age = 0
	end

	def age!
		@age +=1
	end

end

class Orange

	attr_reader :diameter

	def initialize
		@diameter = 1
	end

end

tree = OrangeTree.new
puts tree.height == 0
puts tree.age == 0

tree.age!
puts tree.age == 1

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