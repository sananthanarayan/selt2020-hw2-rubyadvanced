require 'part2.rb'
require 'rspec.rb'

# 30 pts for part A
describe '#rps_game_winner' do
  it 'must be defined [0 point]' do
    expect { rps_game_winner([%w[X P], %w[Y S]]) }.not_to raise_error
  end

  # this is given for free in the outline
  it 'raises WrongNumberOfPlayersError if there are not exactly two players [1 point]' do
    expect { rps_game_winner([%w[Allen S]]) }.to raise_error(WrongNumberOfPlayersError), 'No error raised for incorrect number of players'
  end
  # TODO: YOUR TESTING CODE HERE [more points]
end

# 70 pts for part B
describe '#rps_tournament_winner' do
  it 'must be defined' do
    expect(-> { rps_tournament_winner([%w[X P], %w[Y S]]) }).not_to raise_error
  end

  # TODO: YOUR TESTING CODE HERE [more points]
end
