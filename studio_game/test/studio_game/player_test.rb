require "minitest/autorun"

require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test
  def test_has_a_capitalized_name
    player = Player.new("finn", 60)
    assert_equal "Finn", player.name
  end

  def test_has_an_initial_health
    player = Player.new("finn", 60)
    assert_equal 60, player.health
  end

  def test_has_a_score
    player = Player.new("finn", 60)
    assert_equal 64, player.score
  end

  def test_has_a_string_representation
    player = Player.new("finn", 60)
    assert_equal "I'm Finn with a health of 60 and a score of 64", player.to_s
  end

  def test_boost_increases_health
    player = Player.new("finn", 60)
    player.boost
    assert_equal 75, player.health
  end

  def test_drain_decreases_health
    player = Player.new("finn", 60)
    player.drain
    assert_equal 50, player.health
  end
end