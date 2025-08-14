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

player_1 = Player.new('finn', 60)

number_rolled = rand(1..6)
case number_rolled
when 1..2
    player_1.drain
    puts "(#{player_1.name}) got drained 😩"
when 3..4
    puts "(#{player_1.name}) got skipped"
when 5..6
    player_1.boost
    puts "(#{player_1.name}) got boosted 💪"
end

number_rolled = rand(1..7)
puts number_rolled == 7 ? "lucky" : "unlucky"
unless number_rolled == 7
  puts "You rolled a #{number_rolled}"
end
puts "Champ!" unless player_1.score <= 250
