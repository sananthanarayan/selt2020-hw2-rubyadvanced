class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end
class TournamentWrongError < StandardError; end

# [OPTIONAL] feel free to add your own helper functions as needed


def rps_game_winner(game)
  # Expects something like:
  # [ [ "Allen", "R" ], [ "Richard", "P" ] ]

  raise WrongNumberOfPlayersError unless game.length == 2

  # TODO: YOUR CODE HERE
  # Setting up the no such strategy error for both players, could make the code more efficient by putting it into an each method
  raise NoSuchStrategyError if game[0][1].downcase != 'p' and game[0][1].downcase != 's' and game[0][1].downcase != 'r'
  raise NoSuchStrategyError if game[1][1].downcase != 'p' and game[1][1].downcase != 's' and game[1][1].downcase != 'r'

  # Determines whether player 1 or 2 wins the rock paper scissors game and returns the winner. found out that the return statement is needed for line 19 otherwise only line 2o returns
  return game[1] if (game[1][1].downcase == 'p' and game[0][1].downcase == 'r') || (game[1][1].downcase == 's' and game[0][1].downcase == 'p') or (game[1][1].downcase == 'r' and game[0][1].downcase == 's')
  game[0]

end


def rps_tournament_winner(tournament)
  # TODO: YOUR CODE HERE
  # HINT:  one elegant solution is only 5 lines of code
  # HINT:  Game is 2 player moves, a player move is an array that only contains strings

  # Raises an error if tournament is set up incorrectly/wrong
  raise TournamentWrongError unless tournament.class == Array

  # This loop is how i would get the players all put in a list along with their choice
  # Did not have enough time to get the rest of this code done and working
  (0..tournament.length-1).each{ |i|
    players = rps_tournament_winner(tournament[i])
  }


end
