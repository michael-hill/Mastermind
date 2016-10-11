require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/mastermind'
require './lib/messages'
class MastermindTest < Minitest::Test

  def test_it_can_start_game
    mastermind = Mastermind.new
    
    assert_equal result, mastermind.start_a_game
  end

end
