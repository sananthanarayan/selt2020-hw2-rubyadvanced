class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

# [OPTIONAL] feel free to add your own helper functions as needed


def rps_game_winner(game)
  # Expects something like:
  # [ [ "Allen", "R" ], [ "Richard", "P" ] ]
  # => [ "Richard", "P" ]
  raise WrongNumberOfPlayersError unless game.length == 2

  # TODO: YOUR CODE HERE
end

def rps_tournament_winner(tournament)
  # TODO: YOUR CODE HERE
  # HINT:  one elegant solution is only 5 lines of code
  # HINT:  Game is 2 player moves, a player move is an array that only contains strings
end
