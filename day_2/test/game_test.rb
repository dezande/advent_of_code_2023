require 'minitest/autorun'
require_relative '../app/game'

class GameTest < Minitest::Test
  def test_game_66
    line = 'Game 66: 1 blue, 3 red, 19 green; 3 red, 17 blue, 15 green; 9 green, 9 blue'
    bag = { red: 12, green: 13, blue: 14 }
    game = Game.new(line, bag)
    assert_equal 66, game.id
    refute game.valid?
    assert_equal 17, game.blue_max
    assert_equal 3, game.red_max
    assert_equal 19, game.green_max
    assert_equal 969, game.power
  end

  def test_game_67
    line = 'Game 67: 1 blue, 3 red, 0 green; 3 red, 17 blue, 15 green; 9 green, 9 blue'
    bag = { red: 12, green: 15, blue: 17 }
    game = Game.new(line, bag)
    assert_equal 67, game.id
    assert game.valid?
    assert_equal 17, game.blue_max
    assert_equal 3, game.red_max
    assert_equal 15, game.green_max
    assert_equal 765, game.power
  end
end
