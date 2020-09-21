# Top level CartesianProduct class for testing Enumerables
class CartesianProduct
  include Enumerable

  def initialize(pnt_a, pnt_b)
    # TODO: YOUR CODE HERE
    # Initializing the 2 variables that the constructor passes in
    # Used HW1 part 3 and HW2 part 3 formats for constructor
    @pnt_a = pnt_a
    @pnt_b = pnt_b
  end

  def each
    # TODO: YOUR CODE HERE
    # Originally had the each lines as for loops but rubocop said each can be used instead
    # Used this site to help figure out how yield works https://stackoverflow.com/questions/3066703/blocks-and-yields-in-ruby
    # Set up double for loop to iterate through both arrays and return the Cartesian coordinates
    (0..@pnt_a.length - 1).each { |i|
      (0..@pnt_b.length - 1).each { |j|
        yield [@pnt_a[i], @pnt_b[j]]
      }
    }
  end
end
