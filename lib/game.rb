
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

  def current_player
    
  end


  def switch_turn
    if @current_player == @players[0]
      @current_player = @players[1]
      @opponent = @players[0]
    else
      @current_player = @players[0]
      @opponent = @players[1]
    end
  end

end
