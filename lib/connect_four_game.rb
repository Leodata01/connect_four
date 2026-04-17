require_relative 'connect_four_board'
require_relative 'connect_four_player'


class ConnectFourGame

  attr_reader :current_player
  
  def initialize (board = Board.new(), player_one = Player.new("One"), player_two = Player.new("Two"))
    @board = board
    @player_one = player_one
    @player_two = player_two
    @game_over = false
    @current_player = nil 
    @round = 0
  end
    
  def play 
    introduction
    choose_first_player
    play_rounds
  end

  def introduction
    puts 'This is the intro, Good game!'
    @board.display
  end

  def play_rounds
    loop do
      play_one_round
      break if @board.game_over?
      end
  end

  def play_one_round 
    @current_player.choose_position
    switch_current_player
    @round += 1
  end

  

  private

  def choose_first_player
    @current_player = @player_one
  end
  
  def switch_current_player
    player = @current_player === @player_one? @player_two : @player_one
    @current_player = player 
  end
end

