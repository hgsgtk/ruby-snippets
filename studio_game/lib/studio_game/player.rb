# Player class represents a game player with name and health attributes
class Player
  attr_accessor :name
  attr_reader :health, :found_treasures

  def initialize(name, health = 100)
      @name = name.split(" ").map { |word| word.capitalize }.join(" ")
      @health = health
      @found_treasures = Hash.new(0)
  end

  def to_s = "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}"

  def drain
      @health -= 10
  end

  def boost
    @health += 15
  end

  def score
    @health + points
  end

  def name=(new_name)
      @name = new_name.capitalize
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def points
    @found_treasures.values.sum
  end

  def self.from_csv(raw)
    health = Integer(raw[1]) rescue 50
    Player.new(raw[0], health)
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
