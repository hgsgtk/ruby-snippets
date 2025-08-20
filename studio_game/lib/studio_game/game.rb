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
      puts TreasureTrove.treasure_items

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
          player.found_treasure(treasure.name, treasure.points)
          puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points"
        end
      end

      puts "\nAfter playing:"
      puts @players
  end

  def roll_die
    rand(1..6)
  end

  def print_stats
    puts "\n#{@title}:"
    puts "-" * 30
    puts sorted_players

    @players.each do |player|
      puts "\n#{player.name}'s treasure point totals:"
      player.found_treasures.each do |name, points|
        puts "#{name}: #{points}"
      end
      puts "total: #{player.points}"
    end

    puts "\nHigh scores:"
    sorted_players.each do |player|
      name = player.name.ljust(20, ".")
      points = player.score.round.to_s.rjust(5)
      puts "#{name}#{points}"
    end
  end

  def sorted_players
    @players.sort_by { |player| player.score }.reverse
  end
end
