require 'part3.rb'
require 'rspec.rb'

describe 'dessert' do
  it 'must define a constructor [0 points]' do
    expect { Dessert.new('a', 1) }.not_to raise_error
  end
  %i[healthy? delicious?].each do |method|
    it "must define #{method} [0 points]" do
      #      Dessert.new('a',1).should respond_to method
      expect(Dessert.new('a', 1)).to respond_to(method)
    end
  end
  # TODO: YOUR TESTING CODE HERE
end

describe 'jellybean' do
  it 'must define a constructor [0 points]' do
    expect { JellyBean.new('a', 1, 2) }.not_to raise_error
  end
  %i[healthy? delicious?].each do |method|
    it "must define #{method} [0 points]" do
      #      JellyBean.new('a',1, 2).should respond_to method
      expect(JellyBean.new('a', 1, 2)).to respond_to(method)
    end
  end
  # TODO: YOUR TESTING CODE HERE
end
