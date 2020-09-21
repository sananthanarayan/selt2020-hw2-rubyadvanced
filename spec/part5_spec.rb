require 'part5.rb'
require 'rspec.rb'

describe 'CartesianProduct' do
  it 'must exist [0 points]' do
    expect { CartesianProduct.new(1..2, 3..4) }.not_to raise_error
  end

  # TODO: YOUR TESTING CODE HERE [more points]

end
