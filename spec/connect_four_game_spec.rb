require_relative '../lib/connect_four_game'
# require_relative '../lib/connect_four_board'
# require_relative '../lib/connect_four_player'

describe ConnectFourGame do 
  let(:board) { instance_double(Board)}
  let(:player_one) { instance_double(Player)}
  let(:player_two) { instance_double(Player)}
  subject(:game) { described_class.new(board, player_one, player_two)}


  describe '#play' do
    it 'exists' do
      play = game.play
      expect(play)
    end
  end
  describe '#introduction' do

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