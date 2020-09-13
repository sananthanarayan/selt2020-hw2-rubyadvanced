require 'part1.rb'
require 'rspec.rb'

describe '#palindrome?' do
  # HINT https://www.toptenz.net/top-10-famous-palindromes.php
  # HINT http://www.rubyguides.com/2018/07/rspec-tutorial/
  it 'must be defined' do
    expect { palindrome?('Testing') }.not_to raise_error
  end
  # TODO: YOUR EXTENDED CODE TESTS HERE
end

describe '#count_words' do
  it 'must be defined' do
    expect { count_words('Testing') }.not_to raise_error
  end

  it 'must return a Hash' do
    expect(count_words('Testing').class).to eq(Hash)
  end
  # TODO: YOUR EXTENDED CODE TESTS HERE
end
