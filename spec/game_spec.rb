require './lib/game'
require './lib/player'

describe Game do
  let(:player1) { double('player1', :points => 100) }
  let(:player2) { double('player2', :points => 100, :points_damage => 90) }
  subject(:game) { Game.new }
  xit 'start new a game with two players' do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it '#attack' do
    expect(game.attack(player2)).to eq player2.points_damage(90)
  end
end
