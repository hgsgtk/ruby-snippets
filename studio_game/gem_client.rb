require 'studio_game'

game = StudioGame::Game.new("My Game")
player = StudioGame::Player.new("Ruby Dev", 100)
game.add_player(player)
game.play(3)
