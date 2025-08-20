require_relative 'player'

class ClumsyPlayer < Player
  attr_reader :boost_factor

  def initialize(name, health = 100, boost_factor = 1)
    super(name, health)
    @boost_factor = boost_factor
  end

  def found_treasure(name, points)
    half_points = points / 2.0
    super(name, half_points)
  end

  def boost
    @boost_factor.times { super }
  end
end

if __FILE__ == $0
  clumsy = ClumsyPlayer.new("klutz")

  clumsy.found_treasure("flute", 50)
  clumsy.found_treasure("flute", 50)
  clumsy.found_treasure("flute", 50)
  clumsy.found_treasure("star", 100)

  clumsy.found_treasures.each do |name, points|
    puts "#{name}: #{points} points"
  end
  puts "#{clumsy.points} total points"
end
