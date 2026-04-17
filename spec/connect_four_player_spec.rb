require_relative '../lib/connect_four_player'

describe Player do 
  describe '#choose_position' do 
    subject(:player_position) { described_class.new('player_one') }
    let(:available_positions) { [1,2,3,4,5,6] }

    context 'when the position is included in available_positions' do 
     it 'returns a position 1' do 
      allow(player_position).to receive(:gets).and_return("1")
      position = player_position.choose_position(available_positions)
      expect(position).to eq(1)
     end

     it 'returns a pistion 6' do
      allow(player_position).to receive(:gets).and_return("6") 
       position = player_position.choose_position(available_positions)
       expect(position).to eq(6)
     end
   end
    context 'when position is included 1 time and NOT included 1 time' do 
      before do 
        allow(player_position).to receive(:gets).and_return("10", "4")
      end
      it 'receives gets 2 times' do 
        expect(player_position).to receive(:gets).exactly(2).times
        player_position.choose_position(available_positions)
      end
    end
  end
end