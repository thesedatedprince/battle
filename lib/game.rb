
class Game

  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first.name
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(victim)
    victim.attacked
  end

  # def current_player
  #   @players.first.name
  # end


  def switch_turn(player)
    @current_player == @players[0] ? @current_player = @players[1] : @current_player = @players[0]
  end

end
