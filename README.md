We're in California, and California grows oranges — mostly Washington navel oranges and Valencia oranges, for the botanists among us.

Let's create a toy program to model an orange tree growing over the years. We plant the orange tree, wait for it to bear some fruit, and then pick all the oranges as soon as it does.

The script might look like this:

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
basket = []

# It places the oranges in the basket
# IT PLACES THE ORANGES IN THE BASKET
while tree.any_oranges?
  basket << tree.pick_an_orange!
end

avg_diameter = # It's up to you to calculate the average diameter for this harvest.

puts "Year #{tree.age} Report"
puts "Tree height: #{tree.height} feet"
puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
puts ""

# Age the tree another year
tree.age!
end

puts "Alas, the tree, she is dead!"

Learning Goals
We're modeling a simple system with two objects: orange trees and oranges. We want you to get familiar with defining simple classes and relating them to each other. You'll also learn more about variable scope, and the attr_reader/writer/accessor methods.

Objectives
Implement the OrangeTree and Orange classes
Use attr_reader, attr_writer, and/or attr_accessor so that we can call tree.height and tree.age to get a tree's height or age, respectively. Which of the three attr_ methods should you be using and why?

Do the same with the Orange class so that we can call orange.diameter to get an orange's diamater.

Implement Aging
As a tree ages, it grows taller. Eventually it starts bearing fruit and stops growing — not necessarily at the same time. Some years later, the tree dies and can bear fruit no more!

Implement an OrangeTree#age! instance method that will age your tree one year. Each year the tree should get some amount taller, and then eventually stop growing. You can decide when the tree stops growing.

Later, it should die. At this point your OrangeTree class should:

Have an OrangeTree#height method which returns the tree's current height
Have an OrangeTree#age method which returns the tree's current age
Have an OrangeTree#age! method which ages the tree one year and grows the tree a little, if it's able to grow
Have an OrangeTree#dead? method which returns true if the tree has died

Implement Orange-picking
After some number of years — you decide — the orange tree starts to bear fruit. Write a method OrangeTree#any_oranges? which returns true if there are any oranges on the tree and false otherwise.

Also write a method OrangeTree#pick_an_orange! which will return one of the oranges on the tree (an instance of the Orange class). If you try to pick an orange when there are no oranges left, your code should raise a NoOrangesError (defined in the source code).

You'll also have to implement the Orange class at this point, including Orange.new and Orange#diameter.

Does the script run?
Does the script at the top of the challenge run and output what you'd expect? (Hint: you have to be clear about your expectations before you an answer that question.)

If not, what are the errors or unexpected behaviors? Do you understand them?

We've built a simple model of a single fruit and a single fruit tree with our Orange and OrangeTree classes. Let's expand it to a whole grove with multiple kinds of trees.
By the end we'll have classes like FruitGrove, AppleTree, and PearTree.

Learning Objectives
This challenge will be our first substantial encounter with inheritance.

Objectives
The AppleTree and Apple Classes
Let's start by defining AppleTree and Apple classes. They should behave the same as OrangeTree, although have a different life cycle.

That is, they should support all the same methods, but the particularities might differ: apples have a smaller diameter but apple trees bear fruit sooner and bear more fruit when they do.

Creating the Apple and AppleTree class at this stage shouldn't involve much more than copying your Orange and OrangeTree classes and changing a few variables or constants. If it's more complicated than that ask for help!

The FruitTree and Fruit Classes
You now have two kinds of trees which each bear their own fruits. They have tons of code in common. One way to deal with this repetition is to abstract out the common parts into a parent class. We'll call that parent class FruitTree, so your OrangeTree class should now look like:

class OrangeTree < FruitTree
 # code goes here
end
Think carefully about the parameters that make an orange tree different from an apple tree. They might include parameters like

How much the tree grows each year
How old the tree must be before it stops growing
How old the tree must be before it bares fruit
How much fruit the tree yields each year
Maybe most importantly, what kind of fruit it bares
There could be others, but this gives you an idea of some of the "parameters" that differentiate one fruit tree's behavior from another.

The PearTree and Pear Classes
Now that you have FruitTree and Fruit classes, create a PearTree class that yields Pears, just like OrangeTree and AppleTree.

Create a TreeGrove Class
Let's plant some trees! Create a TreeGrove class that works as follows.

You can initialize a TreeGrove with an Array of any kind of FruitTree, of any age.
There is a TreeGrove#age! method will will age each tree in the grove one year by calling age! on each FruitTree.
There is a TreeGrove#trees method which returns all trees
There is a TreeGrove#mature_trees method which returns all trees that can currently bear fruit
There is a TreeGrove#dead_trees method which returns all dead trees