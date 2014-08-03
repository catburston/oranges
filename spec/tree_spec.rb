require_relative '../lib/trees/apple_tree'
require_relative '../lib/trees/orange_tree'
require_relative '../lib/trees/tree'
require_relative '../lib/fruits/fruit'
require_relative '../lib/fruits/orange'
require_relative '../lib/fruits/apple'

describe "OrangeTree" do

  before :each do
    @orange_tree = OrangeTree.new
  end

  it "creates an orange tree" do
    expect(@orange_tree).to be_an_instance_of(OrangeTree)
  end

  it "has height" do
    expect(@orange_tree.height).not_to be(nil)
  end

  it "has age" do
    expect(@orange_tree.age).not_to be(nil)
  end

  it "grows height 10 cm every year" do
    orange_tree = OrangeTree.new
    orange_tree.age!
    expect(orange_tree.height).to eq(10)
  end

  it "displays no orange error when there aren't oranges" do
    orange = @orange_tree.pick_orange!
    expect(orange).to eq("NoOrangesError")
  end

  it "can decide if is able to bear fruit" do
    orange_tree = OrangeTree.new
    expect(orange_tree.can_bear_fruit?).to be_falsey
    16.times{ orange_tree.age! }
    expect(orange_tree.can_bear_fruit?).to be_truthy
  end

  it "gets one year older each time it calls age!" do
    orange_tree = OrangeTree.new
    16.times{ orange_tree.age! }
    expect(orange_tree.age).to eq(16)
  end

  it "only grows the height until 15 years" do
    orange_tree = OrangeTree.new
    19.times{ orange_tree.age! }
    expect(orange_tree.height).to eq(150)
  end

  it "dies after 20 years" do
    orange_tree = OrangeTree.new
    30.times{ orange_tree.age! }
    expect(orange_tree.dead?).to be_truthy
  end

end

describe "AppleTree" do

  before :each do
    @apple_tree = AppleTree.new
  end

  it "creates an apple tree" do
    expect(@apple_tree).to be_an_instance_of(AppleTree)
  end

  it "has height" do
    expect(@apple_tree.height).not_to be(nil)
  end

  it "has age" do
    expect(@apple_tree.age).not_to be(nil)
  end

  it "grows height 3 cm every year" do
    apple_tree = AppleTree.new
    apple_tree.age!
    expect(apple_tree.height).to eq(3)
  end

  it "adds 1 year each time age! is called" do
    apple_tree = AppleTree.new
    apple_tree.age!
    expect(apple_tree.age).to eq(1)
  end
end

describe "Orange" do
  it "has a diameter of 1" do
    orange = Orange.new
    expect(orange.diameter).to eq(1)
  end
end