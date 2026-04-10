require_relative 'connect_four_board'
require_relative 'connect_four_player'


class ConnectFourGame
  
  def initialize (board = Board.new(), player_one = Player.new("One"), player_two = Player.new("Two"))
    @board = board
    @player_one = player_one
    @player_two = player_two
  end
    
  def play 
    introduction
    play_rounds
  end

  def introduction
    puts 'This is the intro, Good game!'
    @board.display
  end

  def play_rounds
    
  end

end


