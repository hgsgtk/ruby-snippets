# frozen_string_literal: true

require_relative 'treasure_trove'

# Game class manages players and gameplay for Studio Game
class Game
  attr_reader :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play(rounds = 1)
      puts @title

      puts "\nThe following treasures can be found:"
      TreasureTrove::TREASURES.each do |treasure|
        puts "A #{treasure.name} is worth #{treasure.points} points"
      end

      puts "\nBefore playing:"
      puts @players

      1.upto(rounds) do |round|
        puts "\nRound #{round}:"

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

          treasure = TreasureTrove.random_treasure
          puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points"
        end
      end

      puts "\nAfter playing:"
      puts @players
  end

  def roll_die
    rand(1..6)
  end
end
