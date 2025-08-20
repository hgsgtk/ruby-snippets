class Game
    attr_reader :title
    attr_reader :players

    def initialize(title)
      @title = title
      @players = []
    end

    def add_player(player)
      @players << player
    end

    def play
        puts @title

        puts "\nBefore playing:"
        puts @players
        puts "\n"

        @players.each do |player|        
            case roll_die
            when 1..2
                player.drain
                puts "(#{player.name}) got drained 😩"
            when 3..4
                puts "(#{player.name}) got skipped"
            when 5..6
                player.boost
                puts "(#{player.name}) got boosted 💪"
            end    
        end

        puts "\nAfter playing:"
        puts @players
    end

    def roll_die
      rand(1..6)
    end
end

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

game = Game.new("Winner Takes All")

player_1 = Player.new('finn', 60)
player_2 = Player.new('lucy', 90)
player_3 = Player.new('jase')
player_4 = Player.new('alex', 125)

game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)

game.play
