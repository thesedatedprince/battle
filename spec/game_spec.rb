require 'game'

describe Game do

  subject(:game){described_class.new(player1, player2)}
  let(:player1){ double :player, name: nil }
  let(:player2){ double :player, attacked: nil, name: nil }

  describe '#player_1' do
    it "should instantiate with player 1 object" do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it "should instantiate with player 2 object" do
      expect(game.player_2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player' do
      game.attack(player2)
      expect(player2).to have_received(:attacked)
    end
  end

  describe '#switch turn' do
    it 'initializes as set to player 1' do
      expect(game.current_player).to eq player1.name
    end

    it 'switches the current player' do
      #allow(player1).to receive(:current_name).and_return("player 1")
      game.switch_turn
      expect(game.current_player).to eq player2.name
    end
  end

end
