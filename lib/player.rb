class Player

  attr_reader :name, :hitpoints

  DEFAULT_HIT_POINTS = 50

  def initialize(name, hitpoints = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoints = hitpoints
  end

  def damage
    @hitpoints -= 10
  end

  def attack(opponent_player)
    opponent_player.damage
  end 

end
