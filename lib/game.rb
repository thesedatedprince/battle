
class Game

  attr_reader :current_player, :opponent

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @opponent = player2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    @opponent.attacked
  end

  def switch_turn
    @current_player, @opponent = @opponent, @current_player
  end

end
