require_relative 'lib/studio_game/game'
require_relative 'lib/studio_game/player'

player_1 = Player.new('finn', 60)
player_2 = Player.new('lucy', 90)
player_3 = Player.new('jase')
player_4 = Player.new('alex', 125)
player_5 = Player.new('kaz taisei')

game = Game.new("Winner Takes All")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.add_player(player_5)

game.play(3)

game.print_stats
