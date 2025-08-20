require_relative 'player'

module StudioGame
  class BerserkPlayer < Player
    def initialize(name, health = 100)
      super(name, health)
      @boost_count = 0
    end

    def berserk?
      @boost_count > 5
    end

    def boost
      super
      @boost_count += 1
      puts "#{@name} is berserk!" if berserk?
    end

    def drain
      berserk? ?boost : super
    end
  end

  if __FILE__ == $0
    berserk = BerserkPlayer.new("berserker", 50)
    6.times { berserk.boost }
    2.times { berserk.drain }
    puts berserk.health
  end
end
