class Game
  attr_reader :current_player, :opponent

  def initialize(player_1,player_2)
    @current_player=player_1
    @opponent=player_2
  end

  def attack(player)
    player.points_damage
  end

  def switch
    @current_player, @opponent = @opponent, @current_player
  end

end
