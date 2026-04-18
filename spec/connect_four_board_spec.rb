require_relative '../lib/connect_four_board'

describe Board do
  subject(:board) { described_class.new }
  describe '#display' do 
    # no need to test its only a print method 
  end
  describe '#available_positions' do 
    it 'returns an array' do
      value =  board.available_positions
      expect(value).to be_a(Array)
    end
  end
  describe '#update_available_positions' do 
    context 'when given an available position and a sign' do 
      it ''
    end
  end
  describe '#game_over?' do 
    
  end

end