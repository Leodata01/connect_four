require_relative '../lib/connect_four_game'
# require_relative '../lib/connect_four_board'
# require_relative '../lib/connect_four_player'

describe ConnectFourGame do 
  let(:board) { instance_double(Board)}
  let(:player_one) { instance_double(Player)}
  let(:player_two) { instance_double(Player)}
  subject(:game) { described_class.new(board, player_one, player_two)}


  describe '#play' do
  end
  describe '#introduction' do
    context 'when called' do 

      after do 
      game.introduction
      end

      it 'puts a message' do 
        expect(game).to receive(:puts).once
      end
      
      it 'calls display on board object' do 
        expect(board).to receive(:display)
      end
    end 
  end
  describe '#play_rounds' do
    context 'when game is NOT over 3 times and game over one time' do
      let(:current_player) { instance_double(Player) }
      subject(:game_rounds) { described_class.new(board, player_one, player_two)}

      before do 
        allow(board).to receive(:game_over?).and_return(false, false, false, true)
        allow(game).to receive(:play_one_round)
      end  
      after do 
        game.play_rounds
      end
      it 'calls play_one_round 4 times' do 
        expect(game).to receive(:play_one_round).exactly(4).times
      end
      it 'calls @board.game_over? 4 times' do 
        expect(board).to receive(:game_over?).exactly(4).times
      end
    end
  end 
  describe '#play_one_round' do 
    context 'when current_player is player_one'

      before do 
        game.instance_variable_set(:@current_player, player_one)
        current_player = game.instance_variable_get(:@current_player)
        allow(current_player).to receive(:choose_position)
      end

      it 'ask current player to choose a position' do 
        current_player = game.instance_variable_get(:@current_player)
        expect(current_player).to receive(:choose_position).once
        game.play_one_round

      end
      it 'calls #switch_current_player once' do 
        expect(game).to receive(:switch_current_player).exactly(1).time
        game.play_one_round
      end
      it 'add one round' do 
      expect {game.play_one_round}.to change {game.instance_variable_get(:@round)}.by(1) 
      end 
    end
  describe '#choose_first_player' do
    it 'updates current_player to a player' do 
      
    end

  end
  describe '#switch_current_player' do 
    context 'when current_player is player_one' do

      before do 
        game.instance_variable_set(:@current_player, player_one)
      end
      it 'updates current_player to player_two' do
        game.switch_current_player
        current_player = game.instance_variable_get(:@current_player)
        expect(current_player).to equal(player_two)
      end
    end

    context 'when current_player is player_two' do 

      before do 
        game.instance_variable_set(:@current_player, player_two)
      end
      it 'updates current_player to player_one' do
        game.switch_current_player 
        current_player = game.instance_variable_get(:@current_player)
        expect(current_player).to equal(player_one)
      end
    end
  end
end
