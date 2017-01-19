class Player

  attr_reader :name, :points

  def initialize(name="Player", points=100)
    @name = name
    @points = points
  end

  def points_damage
    @points -= 10
  end

end
