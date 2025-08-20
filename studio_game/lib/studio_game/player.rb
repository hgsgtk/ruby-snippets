# Player class represents a game player with name and health attributes
class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
  end 
  
  def to_s = "I'm #{@name} with a health of #{@health} and a score of #{score}"

  def drain
      @health -= 10
  end

  def boost
    @health += 15
  end

  def score
    @health + @name.length
  end

  def name=(new_name)
      @name = new_name.capitalize
  end
end

# Debug
if __FILE__ == $0
  player = Player.new('finn', 60)
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end