require 'game'

describe Game do

  subject(:game){described_class.new(player1, player2)}
  let(:player1){ double :player, name: nil, healed: nil }
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
      game.attack
      expect(player2).to have_received(:attacked)
    end
  end

  describe '#heal' do
    it 'heals the player' do
      game.heal
      expect(player1).to have_received(:healed)
    end
  end

  describe '#switch turn' do
    it 'initializes as set to player 1' do
      expect(game.current_player).to eq player1
    end

    it 'switches the current player' do
      game.switch_turn
      expect(game.current_player).to eq player2
    end
  end

end
