class Player
    def initialize(name, health = 100)
        @name = name.capitalize
        @health = health
    end 
    
    def to_s = "I'm #{@name} with a health of #{@health}"

    def drain
        @health -= 10
    end

    def boost
      @health += 15
    end
end

player_1 = Player.new('finn', 60)
puts player_1.inspect
puts player_1

lucy = Player.new('lucy', 90)
jase = Player.new('jase', 100)
alex = Player.new('alex', 125)
puts lucy
puts jase
puts alex

alex.drain
puts alex

alex.boost
puts alex

puts player_1
