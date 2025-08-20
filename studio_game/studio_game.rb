require_relative 'lib/studio_game/game'
require_relative 'lib/studio_game/player'
require_relative 'lib/studio_game/clumsy_player'

game = Game.new("Winner Takes All")
players_file = File.join(__dir__, 'players.csv')
game.load_players(ARGV.shift || players_file)

clumsy_player_1 = ClumsyPlayer.new("klutz")
game.add_player(clumsy_player_1)

loop do
  print "\nHow many game rounds? {'quit' to exit} "
  answer = gets.chomp.downcase
  case answer
  when 'quit', 'exit'
    game.print_stats
    break
  when /^\d+$/
    rounds = answer.to_i

    game.play(rounds)
  else
    puts "Please enter a valid number of rounds or 'quit' to exit"
    next
  end
end

game.save_high_scores
