require 'part4.rb'
require 'rspec.rb'

# 30% of total
describe 'single attr_accessor_with_history' do
  # HINT: a before(:each) clause might make the testign code more DRY
  it 'must have an attr_accessor_with_history method [0 point]' do
    expect(-> { Class.new.attr_accessor_with_history :x }).not_to raise_error
  end

  # TODO: YOUR TESTING CODE HERE [more points]
end
