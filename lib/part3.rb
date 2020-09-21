# A Dessert top-level class
class Dessert
  # Used Ruby Docs to help set and get the name and calories variables, also set up a
  # Also used HW1 Part 3 code to complete this part of the homework
  attr_accessor :name, :calories
  def initialize(name, calories)
    # TODO: YOUR CODE HERE
    raise ArgumentError if name.empty? || calories <= 0
    @name = name
    @calories = calories
  end

  def healthy?
    # TODO: YOUR CODE HERE
    true if @calories<200
  end

  def delicious?
    # TODO: YOUR CODE HERE
    true
  end
end

# A JellyBean class derived from Dessert
class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(name, calories, flavor)
    # TODO: YOUR CODE HERE
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def delicious?
    # TODO: YOUR CODE HERE
    # Had to change it to a true if statment to pass all tests
    true if @flavor != 'black licorice'
  end
end
