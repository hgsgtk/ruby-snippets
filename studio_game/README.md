# Studio Game

A Ruby gem that implements a simple dice-based game about players and treasures.

## Description

Studio Game is a text-based game where players roll dice to determine their fate in each round. Players can get boosted, drained, or skipped based on their dice rolls, and they collect treasures worth various point values throughout the game.

## Features

- **Player Management**: Create and manage multiple players with different characteristics
- **Dice Rolling**: Fair dice system with weighted outcomes
- **Treasure Collection**: Players find random treasures worth points
- **High Score Tracking**: Save and display player rankings
- **CSV Import**: Load players from CSV files
- **Auditable**: Track dice roll outcomes for transparency

## Installation

```bash
gem install studio_game
```

Or add it to your Gemfile:

```ruby
gem 'studio_game'
```

## Usage

### Basic Game Setup

```ruby
require 'studio_game'

# Create a new game
game = StudioGame::Game.new("My Awesome Game")

# Add players
player1 = StudioGame::Player.new("Alice")
player2 = StudioGame::Player.new("Bob")
game.add_player(player1)
game.add_player(player2)

# Play a few rounds
game.play(3)

# Print final statistics
game.print_stats
```

### Loading Players from CSV

```ruby
# Load players from a CSV file
game.load_players("players.csv")
```

### Running the Executable

The gem includes a command-line executable:

```bash
studio_game
```

## Game Mechanics

- **Dice Rolls**: Players roll a weighted 6-sided die
  - 1-2: Player gets drained (loses health)
  - 3-4: Player gets skipped (no effect)
  - 5-6: Player gets boosted (gains health)

- **Treasures**: Each round, players find random treasures worth 1-100 points

- **Scoring**: Final score combines health points and treasure points

## Requirements

- Ruby 3.2.0 or higher

## Author

Kazuki Higashiguchi (hgsgtk@gmail.com)

## License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE.txt) file for details.
